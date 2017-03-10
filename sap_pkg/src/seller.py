#! /usr/bin/env python

# configuring PYTHONPATH (By default, this will add the src and lib directory for each of your dependencies to your PYTHONPATH)
import roslib; roslib.load_manifest('sap_pkg')

# imports to access Master_API
import os, xmlrpclib

# import client library
import rospy

# import messages
import auction_msgs.msg

# import services
import auction_srvs.srv

# import auxiliar libraries
import random, math, sys


###############################################################################
## Main function
###############################################################################
if __name__ == "__main__":
        
    # initialize node (we will have several nodes, anonymous=True)
    rospy.init_node('seller', anonymous=False)


    # setting message number to zero (if doesn't exists it will be created)
    rospy.set_param('/num_messages', 0)    
    # clean nodes_collected
    rospy.set_param('/nodes_collected', '')    


    # here we want to unregister services (clean-up procedure)
    #rospy.set_param('/auction_closed', False)
    
    #master_server = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
    #print master_server.getSystemState(rospy.get_name())
    #code, state, uri= master_server.getSystemState(rospy.get_name(),'/node_2/auction_config_server')
    #print str(code)+ str(state)+ str(uri)


    # create auction information
    role = 'be_auctioneer'
    auction_type = 'sap'
    sending_node = rospy.get_name()
    nodes_collected = ''
  
    auction_data = auction_msgs.msg.Auction()
    auction_data.header.stamp = rospy.Time.now()
    auction_data.header.frame_id = 'base_link'
    auction_data.command = 'join_auction'
    auction_data.task_type_name = 'goto'
    auction_data.subject = 'all'
    auction_data.metrics = 'distance'
    auction_data.length = rospy.Duration(10)
    auction_data.task_location.x = float(sys.argv[1]) #random.random()*100 # l = 100
    auction_data.task_location.y = float(sys.argv[2]) #random.random()*100 # l = 100
    auction_data.task_location.z = 0

    print auction_data.task_location


    # evaluate nearest node to event position
    event_location = auction_data.task_location
    stop_search = False
    i = 1
    number_of_nodes = 0
    nearest_node = []
    nearest_node_distance = 99999999
    while not stop_search:
        try:
            node = '/node_'+str(i)
            node_param = node+'/position'
            node_position = eval(rospy.get_param(node_param))

            # calculate distance to event
            x = float(node_position[0])-event_location.x
            y = float(node_position[1])-event_location.y
            z = float(node_position[2])-event_location.z
            distance = float(math.sqrt(x*x+y*y+z*z))

            if distance < nearest_node_distance:
                nearest_node = node
                nearest_node_position = node_position
                nearest_node_distance = distance

            i+=1
        except:
            rospy.loginfo("Node evaluation complete. Node %s will be auctioneer",nearest_node)
            stop_search = True
            number_of_nodes = i-1


    # gettig time to calculate duration of auction
    time_i = rospy.Time.now()


    # prepare to call AuctionConfigService in the node that will be the auctioneer
    service_path = nearest_node+'/auction_config_server'
    
    rospy.wait_for_service(service_path)
    auction_config_service = rospy.ServiceProxy(service_path, auction_srvs.srv.AuctionConfigService)

    try:
        auction_config_server_resp = auction_config_service(role,auction_type,sending_node)
        rospy.loginfo(auction_config_server_resp)
    except rospy.ServiceException, e:
        rospy.logwarn("Service did not process request: %s",e)


    # send the auction information to the auctioneer node using the AuctioneerService
    service_path = nearest_node+'/auctioneer_server'   
    
    rospy.wait_for_service(service_path)
    auctioneer_service = rospy.ServiceProxy(service_path, auction_srvs.srv.AuctioneerService)
    rospy.loginfo("[message] Seller request")

    try:
        auctioneer_server_resp = auctioneer_service(sending_node,nodes_collected,auction_data)
        rospy.loginfo("[message] Auctioneer response")
        rospy.loginfo(auctioneer_server_resp)
    except rospy.ServiceException, e:
        rospy.logwarn("Service did not process request: %s",e)

        






    # here we want to unregister services (clean-up procedure)
    # ATTENTION: here we need to revert the order of calling services, since the call to auction_config_server will shutdown auctioneer services 
    rospy.set_param('/auction_closed', True)
    """
    try:
        auction_data.command = 'close_auction'
        auctioneer_server_resp = auctioneer_service(sending_node,nodes_collected,auction_data)
        rospy.loginfo("[message] Auctioneer response")
        rospy.loginfo(auctioneer_server_resp)
    except rospy.ServiceException, e:
        rospy.logwarn("Service did not process request: %s",e)

    try:
        auction_config_server_resp = auction_config_service('none',auction_type,sending_node)
        rospy.loginfo(auction_config_server_resp)
    except rospy.ServiceException, e:
        rospy.logwarn("Service did not process request: %s",e)
    """

    """
    master_server = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
    i=1
    stop = False
    while not stop:
        try:
            service = '/node_'+str(i)+'/auction_config_server'
            print master_server.lookupService(rospy.get_name(),service)
            i+=1
        except:
            stop = True
    """    


    




    # Getting results for statistic studies
    # get collected nodes
    nodes_collected_list = rospy.get_param('/nodes_collected').split(',')
    # remove '' strings
    while '' in nodes_collected_list:
        nodes_collected_list.remove('')

    # remove duplicates
    nodes_collected_list = list(set(nodes_collected_list))    
    nodes_collected_str = ','.join(nodes_collected_list)
    print 'Computed number of nodes: '+str(number_of_nodes)+' Collected Nodes: '+nodes_collected_str

    # Calculate auction duration
    auction_duration = rospy.Time.now() - time_i

    # Obtain average number of messages per robot
    if rospy.has_param('/num_messages'):
        messages = float(rospy.get_param('/num_messages')/number_of_nodes)
        

    # writing results to file   
    f = open(sys.argv[3], 'a')
    print "i'm getting values from ros parameter server right now and output to file"
    line = str(event_location.x)+' '+str(event_location.y)+' '+str(auction_duration.to_sec())+' '+str(messages)+' '+str(auctioneer_server_resp.winner_id)+' '+str(auctioneer_server_resp.winner_cost)+' '+'\n'
    print line
    #rospy.sleep(1.0)
    f.write(line)
    f.close()


   

                                               
## End main

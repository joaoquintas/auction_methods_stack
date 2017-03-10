# configuring PYTHONPATH (By default, this will add the src and lib directory for each of your dependencies to your PYTHONPATH)
import roslib; roslib.load_manifest('saap_pkg')

# import client library
import rospy

# import messages
import auction_msgs.msg

# import services
import auction_srvs.srv

# import auxiliar libraries
import random
import math

# "global" variables (to be referred as global under def fun(something))
winner_id = 'none'
winner_cost = 0

role_assigned = False
node_role = 'none'


################################################################################
## Auction Client for Neighbour Nodes 
## (to be called in the node to pass data to its neighbours)
################################################################################
def neighbour_node_auction_client(neighbour_node, auction_req):

    # compose service name (to be changed)
    service_path = neighbour_node+'/auction_server'

    # wait for the service in the neighbour node to be available
    rospy.wait_for_service(service_path)

    try:
        # create the handle to the service client in the neighbour node
        neighbour_node_auction_server = rospy.ServiceProxy(service_path,
                                                           auction_srvs.srv.AuctionService)

        # call the service with the current auction information as input parameter
        neighbour_node_bid_response = neighbour_node_auction_server(auction_req)

        # log bid information from the neighbour node (debug)
        #rospy.loginfo(neighbour_node_bid_response)

        # return the bid into the parent/calling node
        #return {'response_info':'valid','bid_data':neighbour_node_bid_response}
        return neighbour_node_bid_response.bid_data
        
    except rospy.ServiceException, e:
        rospy.loginfo("Service call failed: %s",e)
            
## End neighbour_node_auction_client




#########################################################################################
## Create list of neighbour nodes to relay the auction_req
## (must return a list)
#########################################################################################
def create_neighbour_nodes_list(auction_req):

    neighbour_nodes_string = rospy.get_param('~neighbour_nodes_list')
    neighbour_nodes_list = neighbour_nodes_string.split(',')

    ##debug##
    #print "1."
    #print neighbour_nodes_list
    #for node in neighbour_nodes_list:
    #    print node
    ##debug##

    #print neighbour_nodes_string
    #print auction_req.nodes_collected

    #nodes_collected_list = neighbour_nodes_list + auction_req.nodes_collected.split(',')
    #print "Collected nodes list:"
    #print nodes_collected_list

    # print "Intersection:"
    # print list(set(neighbour_nodes_list) & set(auction_req.nodes_collected.split(',')))
    # print "Union:"
    # print list(set(neighbour_nodes_list) | set(auction_req.nodes_collected.split(',')))
    # print "Difference"
    # print list(set(neighbour_nodes_list) - set(auction_req.nodes_collected.split(',')))

    nodes_collected_list = list(set(neighbour_nodes_list) - set(auction_req.nodes_collected.split(',')))
    

    # remove '' strings
    while '' in nodes_collected_list:
        nodes_collected_list.remove('')

    # remove duplicates
    nodes_collected_list = list(set(nodes_collected_list))
    
    # remove self-references
    while rospy.get_name() in nodes_collected_list:
        nodes_collected_list.remove(rospy.get_name())

    # remove references to the sender node
    while auction_req.sending_node in nodes_collected_list:
        nodes_collected_list.remove(auction_req.sending_node)
        

    if nodes_collected_list:

        # convert list to string splited by ','
        nodes_collected_string = ','.join(nodes_collected_list)

        ##debug##
        #print "\nNodes Collected:"+nodes_collected_string+"\n"
        ##debug##

        neighbour_nodes_list = nodes_collected_string.split(',')

    else:
        neighbour_nodes_list = []
        pass

    return neighbour_nodes_list
    #return nodes_collected_list

## End create_neighbour_nodes_list

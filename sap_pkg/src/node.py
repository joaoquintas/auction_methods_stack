#! /usr/bin/env python

# Each node in the network can:
#   - be called to serve as actioneer or buyer;
#   - actioneer service is called by a seller/collector node with 
#     request start_auction;
#   - buyer service is called by the a auctioneer node with request
#     join_auction / close_auction

# The node will need to run a general server service, that will redirect to the
# correct service callback action according to the received request 
# (e.g. seller node request the auctioneer service sending start_auction 
# message and the node will provide the auctioneer service; 
# auctioneer node request the buyer service sending join_auction message 
# and the node will provide the buyer service 


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

# import services functions
import auctioneer
import buyer_sap

# import auxiliar libraries
import random
import math

# "global" variables (to be referred as global under def fun(something))
role_assigned = False
actual_role = 'none'
master_server = ''
buyer_server = ''
auctioneer_server = ''
auctioneer_bid_reception_server = ''


############################################################################
## Auctioneer Services
############################################################################
def auctioneer_services():

    global auctioneer_server, auctioneer_bid_reception_server

    #if rospy.has_param('/auction_close'):
    #    if rospy.get_param('/auction_close') == True:
    #        auctioneer_server.shutdown('auction_closing')
    #        auctioneer_bid_reception_server.shutdown('auction_closing')

    # create Auctioneer Service
    service_path = rospy.get_name()+"/auctioneer_server"

    auctioneer_server = rospy.Service(service_path, auction_srvs.srv.AuctioneerService, auctioneer.handle_auctioneer_server_callback)
    

    # create Auctioneer Bid Reception Service
    service_path = rospy.get_name()+"/auctioneer_bid_reception_server"

    auctioneer_bid_reception_server = rospy.Service(service_path, auction_srvs.srv.AuctioneerBidReceptionService, auctioneer.handle_auctioneer_bid_reception_server_callback)


    #if rospy.has_param('/auction_close'):
    #    if rospy.get_param('/auction_close') == True:
    #        auctioneer_server.shutdown('auction_closing')
    #        auctioneer_bid_reception_server.shutdown('auction_closing')
    
## End create_auctioneer_services



############################################################################
## Buyer Services
############################################################################
def buyer_services():

    global buyer_server

    # service_manager = rospy.service.ServiceManager()

    #if rospy.has_param('/auction_close'):
    #    if rospy.get_param('/auction_closed') == True:
    #        buyer_server.shutdown('auction_closing')

    #        print "\nDoes the code enter here???\n"
            

    # create Buyer Service
    service_path = rospy.get_name()+"/buyer_server"
    
    buyer_server = rospy.Service(service_path, auction_srvs.srv.BuyerService, buyer_sap.handle_buyer_server_callback)

    #buyer_server.spin()
    # if rospy.has_param('/auction_close'):
    #    if rospy.get_param('/auction_closed') == True:
    #        buyer_server.shutdown('auction_closing')

    
## End create_buyer_services


############################################################################
## Cleanup Services
############################################################################
def cleanup():

    global master_server, auctioneer_server, auctioneer_bid_reception_server, buyer_server, role_assigned, actual_role

    print "Cleanup time..."


    if actual_role == 'auctioneer':

        role_assigned = False
        actual_role = 'none'

        """
        print "auctioneer services will now shutdown"
        auctioneer_server.shutdown()
        #service_code, service_status, service_uri = master_server.lookupService(rospy.get_name(),str(rospy.get_name())+'/auctioneer_server')
        #print 'Service: code:'+str(service_code) + ' status:' + service_status + ' uri:' + service_uri
        #master_server.unregisterService(rospy.get_name(),str(rospy.get_name())+'/auctioneer_server',service_uri)
        
        auctioneer_bid_reception_server.shutdown()
        #service_code, service_status, service_uri = master_server.lookupService(rospy.get_name(),str(rospy.get_name())+'/auctioneer_bid_reception_server')
        #print 'Service: code:'+str(service_code) + ' status:' + service_status + ' uri:' + service_uri
        #master_server.unregisterService(rospy.get_name(),str(rospy.get_name())+'/auctioneer_bid_reception_server',service_uri)
        print "auctioneer services shutdown succeeded"
        """
    elif actual_role == 'buyer':

        role_assigned = False
        actual_role = 'none'
        """
        print "buyer services shutdown succeeded"
        buyer_server.shutdown()
        #service_code, service_status, service_uri = master_server.lookupService(rospy.get_name(),str(rospy.get_name())+'/buyer_server')
        #print 'Service: code:'+str(service_code) + ' status:' + service_status + ' uri:' + service_uri
        #master_server.unregisterService(rospy.get_name(),str(rospy.get_name())+'/buyer_server',service_uri)
        print "buyer services shutdown succeeded"
        """
    else:
        return "Something wrong happened in cleanup, actual_role invalid to clean..."
## End cleanup



############################################################################
## Auction Config Service Callback
############################################################################
def handle_auction_config_server_callback(auction_req):

    global role_assigned, actual_role
    global master_server, buyer_server


    #master_server = xmlrpclib.ServerProxy(os.environ['ROS_MASTER_URI'])
    #print master_server.getSystemState(rospy.get_name())


    # update number of messages in parameter server
    if rospy.has_param('/num_messages'):
        num_messages = rospy.get_param('/num_messages')
        num_messages += 2
        rospy.set_param('/num_messages', num_messages)



    #   print '\n\n\n\t\t'
    #   print auction_req._connection_header

    # instanciate a ServiceManager (to help cleanup registered services)
    #service_manager = rospy.service.ServiceManager()
    
    # Clean up
    if rospy.has_param('/auction_closed'):
        if rospy.get_param('/auction_closed') == True:
            role_assigned = False
    #if auction_req.role == 'none':
    #    cleanup()
    #    rospy.loginfo(rospy.get_name()+' cleanup')
    #    return {'response_info': rospy.get_name()+' cleanup'}

            

    rospy.loginfo(rospy.get_name()+' '+str(role_assigned))

    # avoid node to take another role
    if not role_assigned:
        role_assigned = True

        if auction_req.role == 'be_auctioneer':
            actual_role = 'auctioneer'
            auctioneer_services()
            return {'response_info':'Auctioneer: '+rospy.get_name()+' ready for auction'}
        
        elif auction_req.role == 'be_buyer':
            actual_role = 'buyer'
            buyer_services()
            return {'response_info':'Buyer: '+rospy.get_name()+' ready for auction'}
        else:
            return {'response_info':'invalid role requested'}


        #if rospy.has_param('/auction_closed'):
        #    rospy.set_param('/auction_closed', False)
    else:
        return {'response_info':'node already have a role'}

## End handle_auction_config_server_callback            



############################################################################
## Main function
############################################################################
if __name__ == "__main__":
        
    # initialize node (we will have several nodes, anonymous=True)
    rospy.init_node('node', anonymous=True)
    
    # create the auction_config_server
    service_path = rospy.get_name()+"/auction_config_server"

    auction_config_server = rospy.Service(service_path,
                                          auction_srvs.srv.AuctionConfigService,
                                          handle_auction_config_server_callback) 
    
    # ok, ready to participate
    # rospy.loginfo(rospy.get_name()+" is ready to participate in the auction.")

    # Prevent node from exit until node shutdown
    rospy.spin()

## End main

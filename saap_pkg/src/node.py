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
import roslib; roslib.load_manifest('saap_pkg')

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
import buyer_saap

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
## Auction Config Service Callback
############################################################################
def handle_auction_server_callback(auction_req):

    global role_assigned, actual_role
    global master_server, buyer_server


    # update number of messages in parameter server
    if rospy.has_param('/num_messages'):
        num_messages = rospy.get_param('/num_messages')
        num_messages += 2
        rospy.set_param('/num_messages', num_messages)

    # Clean up
    if rospy.has_param('/auction_closed'):
        if rospy.get_param('/auction_closed') == True:
            role_assigned = False

    rospy.loginfo(rospy.get_name()+' '+str(role_assigned))

    # avoid node to take another role
    if not role_assigned:
        role_assigned = True

        if auction_req.role == 'be_auctioneer':
            return auctioneer.handle_auction_server_callback(auction_req)
        
        elif auction_req.role == 'be_buyer':
            return buyer_saap.handle_auction_server_callback(auction_req)

        else:
            return {'response_info':'invalid role requested'}

    else:
        return {'response_info':'node already have a role'}
## End handle_auction_server_callback
      
##################################################################################
## Auction Service (Server)
##################################################################################
def auction_server():

    service_path = rospy.get_name()+"/auction_server"

    auctioneer_response = rospy.Service(service_path,
                                     auction_srvs.srv.AuctionService,
                                     handle_auction_server_callback)

    # ok, ready to participate
    #rospy.loginfo(rospy.get_name()+" is ready to participate in the auction.")
    
    # Prevent node from exit until shutdown
    rospy.spin()
## End Auction Service (Server)
                

#####################################################################################
## Main function
#####################################################################################
if __name__ == "__main__":
        
    # initialize node (we will have several nodes, anonymous=True)
    rospy.init_node('node', anonymous=True)
    
    # put service server into action
    auction_server()
## End main

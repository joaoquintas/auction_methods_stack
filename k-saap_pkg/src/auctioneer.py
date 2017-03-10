# configuring PYTHONPATH (By default, this will add the src and lib directory for each of your dependencies to your PYTHONPATH)
import roslib; roslib.load_manifest('k-saap_pkg')

# import client library
import rospy

# import messages
import auction_msgs.msg

# import services
import auction_srvs.srv

# import services functions
import auction_common

# import auxiliar libraries
import random
import math

# "global" variables (to be referred as global under def fun(something))
winner_id = ''
winner_cost = 999999


#####################################################################################
## Auction Service (Server Callback)
#####################################################################################
def handle_auction_server_callback(auction_req):

    # define global variables
    global winner_id
    global winner_cost    


    # update number of messages in parameter server
    if rospy.has_param('/num_messages'):
        num_messages = rospy.get_param('/num_messages')
        num_messages += 2
        rospy.set_param('/num_messages', num_messages)


    # default bid
    bid = auction_msgs.msg.Bid()

    # obtain auctioneer_position
    auctioneer_position = {'auctioneer_position': rospy.get_param('~position')}    
        
    # Obtain nodes list to relay information with k=1
    neighbour_nodes_relay_list = auction_common.create_neighbour_nodes_list(auction_req)        
    print neighbour_nodes_relay_list
        
    # Prepare auction information
    if auction_req.auction_data.command == 'close_auction':
        auction_req.role = 'none'
    else:
        auction_req.role = "be_buyer"    

    auction_req.sending_node = rospy.get_name()

    # updated nodes_collected
    if rospy.has_param('/nodes_collected'):
        auction_req.nodes_collected = rospy.get_param('/nodes_collected')+','+rospy.get_name()
        rospy.set_param('/nodes_collected',auction_req.nodes_collected)
    else:
        auction_req.nodes_collected = rospy.get_param('~neighbour_nodes_list')
    
            
    # Call the Auction Service from each neighbour node
    for node in neighbour_nodes_relay_list:

        # compose service name (to be changed)
        service_path = node+'/auction_server'

        # wait for the service in the neighbour node to be available
        rospy.wait_for_service(service_path)
        neighbour_node_auction_server = rospy.ServiceProxy(service_path,
                                                           auction_srvs.srv.AuctionService,headers=auctioneer_position)

        try:
            bid_response = neighbour_node_auction_server(auction_req)

            bid = bid_response.bid_data

            # Evaluate bids, Min(cost_distance)    
            if winner_cost >= bid.cost_distance:
                if bid.buyer_id != '':
                    winner_cost = bid.cost_distance
                    winner_id = bid.buyer_id
                
            # log info for momentary winner
            # rospy.loginfo("(winning at the moment) %s with offer %d",winner_id, winner_cost)
                    
        except rospy.ServiceException, e:
            rospy.loginfo("Service call failed: %s",e)

                
    # verbose for auction status (received all the bids)
    rospy.loginfo("winner was: %s with offer %d",winner_id, winner_cost)

    # return response
    # return auction_srvs.srv.AuctionServiceResponse(bid_response)
    return {'response_info': 'valid', 'bid_data': bid}
## End Auction Server (Server Callback)

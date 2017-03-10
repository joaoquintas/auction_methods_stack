# configuring PYTHONPATH (By default, this will add the src and lib directory for each of your dependencies to your PYTHONPATH)
import roslib; roslib.load_manifest('sap_pkg')

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
## Auctioneer Bid Reception Service Callback
#####################################################################################
def handle_auctioneer_bid_reception_server_callback(bid_req):
    
    # define global variables
    global winner_id
    global winner_cost  
    
    # Evaluate bids, Min(cost_distance)    
    if winner_cost >= bid_req.bid_data.cost_distance:
        if bid_req.bid_data.buyer_id != '':
            winner_cost = bid_req.bid_data.cost_distance
            winner_id = bid_req.bid_data.buyer_id

    return {'response_info':'bid_received'}
## End handle_auctioneer_bid_reception_callback





#####################################################################################
## Auctioneer Service Callback
#####################################################################################
def handle_auctioneer_server_callback(auction_req):

    # define global variables
    global winner_id
    global winner_cost    


    # update number of messages in parameter server
    if rospy.has_param('/num_messages'):
        num_messages = rospy.get_param('/num_messages')
        num_messages += 2
        rospy.set_param('/num_messages', num_messages)

    
    # Obtain nodes list to relay information with k=1
    neighbour_nodes_relay_list = auction_common.create_neighbour_nodes_list(auction_req)
   
    
    # Prepare auction information
    if auction_req.auction_data.command == 'join_auction':
        role = "be_buyer"
    else:
        role = 'none'

    auction_type = 'sap'
    sending_node = rospy.get_name()
        
    auctioneer_node = rospy.get_name()

    # updated nodes_collected
    if rospy.has_param('/nodes_collected'):
        nodes_collected = rospy.get_param('/nodes_collected')+','+rospy.get_name()
        rospy.set_param('/nodes_collected',nodes_collected)
    else:
        nodes_collected = rospy.get_param('~neighbour_nodes_list')

    auction_data = auction_req.auction_data
        
            
    # send requests for neighbours
    for node in neighbour_nodes_relay_list:           
            
        # prepare neighbours to be buyers
        service_path = node+'/auction_config_server'
            
        rospy.wait_for_service(service_path)
        neighbour_node_auction_config_server = rospy.ServiceProxy(service_path,
                                                                      auction_srvs.srv.AuctionConfigService)
            
        try:       
            neighbour_node_auction_config_server_resp = neighbour_node_auction_config_server(role,auction_type,sending_node)
                
        except rospy.ServiceException, e:
            rospy.logwarn("[%s] Service call failed: %s",rospy.get_name(),e)
                
                
        # send the auction information to the buyer node
        service_path = node+'/buyer_server'   
                
        rospy.wait_for_service(service_path)
        buyer_service = rospy.ServiceProxy(service_path, auction_srvs.srv.BuyerService)
            
        try:
            buyer_server_resp = buyer_service(auctioneer_node,sending_node,nodes_collected,auction_data)
                
        except rospy.ServiceException, e:
            rospy.logwarn("Service did not process request: %s",e)
                    
                
    # verbose for auction status (received all the bids)
    rospy.loginfo("winner was: %s with offer %d",winner_id, winner_cost)

    
    # may need to sleep, to give time for bidders to put their offers

        
    return{'response_info': 'valid','winner_id': winner_id,'winner_cost': winner_cost}
## End handle_auctioneer_server_callback

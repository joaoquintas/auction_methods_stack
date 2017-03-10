# configuring PYTHONPATH (By default, this will add the src and lib directory for each of your dependencies to your PYTHONPATH)
import roslib; roslib.load_manifest('saap_pkg')

# import client library
import rospy

# import messages
import auction_msgs.msg

# import services
import auction_srvs.srv

import auction_common

# import auxiliar libraries
import random
import math

# "global" variables (to be referred as global under def fun(something))
winner_id = 'none'
winner_cost = 0


#####################################################################################
## Buyer Service Callback
#####################################################################################
def handle_auction_server_callback(auction_req):

  # update number of messages in parameter server
    if rospy.has_param('/num_messages'):
        num_messages = rospy.get_param('/num_messages')
        num_messages += 2
        rospy.set_param('/num_messages', num_messages)

    
    # Create a bid messsage to put an offer for the item in auction_req!    
    bid_response = auction_msgs.msg.Bid()
    bid_response.header.frame_id = 'base_link' # to be rechecked
    bid_response.header.stamp = rospy.Time.now()
    bid_response.buyer_id = rospy.get_name()          
        
    if auction_req.auction_data.metrics == "distance":
        # to be given by the cost to go to position of the ocurring event
        # the cost for the metrics==distance is calculated using the euclidean
        # distance between the parameter position of the node and the task_position
        # given in the auction_req
        node_position = eval(rospy.get_param('~position'))
        x = float(node_position[0])-auction_req.auction_data.task_location.x
        y = float(node_position[1])-auction_req.auction_data.task_location.y
        z = float(node_position[2])-auction_req.auction_data.task_location.z
        bid_response.cost_distance = float(math.sqrt(x*x+y*y+z*z))
    else:
        rospy.loginfo("Metrics unkown")
        bid_response.cost_distance = 999999;


    # Relay information to neighbour nodes!
    neighbour_nodes_relay_list = auction_common.create_neighbour_nodes_list(auction_req)
           
    if neighbour_nodes_relay_list:              

        # Prepare auction information
        if auction_req.auction_data.command == 'join_auction':
            role = 'be_buyer'
        else:
            role = 'none'
        auction_req.sending_node = rospy.get_name()

        # updated nodes_collected
        if rospy.has_param('/nodes_collected'):
            auction_req.nodes_collected = rospy.get_param('/nodes_collected')+','+rospy.get_name()
            rospy.set_param('/nodes_collected',auction_req.nodes_collected)
        else:
            auction_req.nodes_collected = rospy.get_param('~neighbour_nodes_list')

        # call the Auction Service from each neighbour of the node
        for node in neighbour_nodes_relay_list:                  
            # obtain response from neighbour buyer node (in k=1)                 
            bid_response_neighbour_node = auction_common.neighbour_node_auction_client(node,auction_req)
            
            if bid_response_neighbour_node.cost_distance < bid_response.cost_distance:
                bid_response.buyer_id= bid_response_neighbour_node.buyer_id
                bid_response.cost_distance= bid_response_neighbour_node.cost_distance
                             
              
    # return best bid
    return {'response_info': 'valid'+rospy.get_name(), 'bid_data':bid_response}

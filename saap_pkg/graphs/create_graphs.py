#! /usr/bin/env python

import min_dpa, os

# dimension of square side
l = 100

# minimum distance between nodes
d0 = 1

# iterate to create 28 scenarios (combining N = 10,20,50,100 with d=4,5,6,7,8,9,10)
for N in [10,20,50,100]:
    for d in range(4,11):        

        S,p,graph = min_dpa.min_dpa(N,d,l,d0)

        if (len(S) == 0) & (len(p)==0) & (len(graph)==0):
            break
        else:
            print N, d
            print "Nodes:\n", S
            print "Node positions:\n", p
            print "Graph:\n", graph


            # output file in dot language
            directory = 'dot/'
            if not os.path.exists(directory):
                os.makedirs(directory)

            filename = directory+'dotgraph_N'+str(N)+'_d'+str(d)+'.dot'
            f = open(filename,'w')

            configure_graph_str = 'digraph G {\nnode [width=.3,height=.3,shape=octagon,style=filled,color=skyblue];\noverlap="false";\nrankdir="LR";\naspect="1";\n'

            f.writelines(configure_graph_str)
            
            f.writelines
            for n in range(0,len(S)):
                s=  ''+S[n]+' [pos="'+str(p[n][0])+','+str(p[n][1])+'!"];\n'
                f.writelines(s)
                
                
            f.writelines
            for i in graph:                 
                for j in graph[i]:
                    s= '      '+ i
                    s+= ' -> ' +  j + ' [label="' + str(graph[i][j]) + '"]'
                    s+= ';\n'
                    f.writelines(s)
                        
            f.writelines('}')
            f.close()
            print "done with ",filename,"!"

            # create roslaunch file
            directory = '../launch/graphs/'
            if not os.path.exists(directory):
                os.makedirs(directory)

            filename = directory+'launch_dotgraph_N'+str(N)+'_d'+str(d)+'.launch'
            f = open(filename,'w')

            f.writelines('<launch>\n')

            f.writelines
            for n in range(0,len(S)):

                s = '\t<node pkg="sap_pkg" type="node.py" name="'+S[n]+'" output="screen">\n'
                f.writelines(s)
            

                s = '\t\t<param name="position" value="[\''+str(p[n][0])+'\',\''+str(p[n][1])+'\',\'0\']"/>\n'
                f.writelines(s)               

                neighbours_list = graph[S[n]].keys()
                neighbours_str = ',/'.join(neighbours_list)
                s = '\t\t<param name="neighbour_nodes_list" value="/'+neighbours_str+'"/>\n'
                f.writelines(s)
                        
                f.writelines('\t</node>\n')
                
            f.writelines('</launch>')    
            f.close()
            print "done with ",filename,"!"

print "\nFinished creating all dot files and roslaunch files!"


# visualize nodes, positions and graph

# test output from min_dpa
#S,p,graph = min_dpa.min_dpa(10,4,l,d0)

#print graph['node_1'].keys()

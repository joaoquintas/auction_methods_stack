import math, sys, random, dijkstra, numpy, gv

def calculate_approximate_degrees(S,p,r):

    approximate_degrees = [0]*len(S)
    
    for i, node in enumerate(S):
        for j, node in enumerate(S):
            distance = math.sqrt(math.pow((p[i][0]-p[j][0]),2)+math.pow((p[i][1]-p[j][1]),2))          
            if (distance < r) & (distance > 0):
                approximate_degrees[i] += 1
                  
    return approximate_degrees


def disk_belongs_square_area(center, r, l):
    
    # endpoints (0,0) (l,0) (0,l) (l,l)
    D = [[0,0],[l,0],[0,l],[l,l]]   

    # If delta is less than 0 then the line does not intersect the sphere.
    # If it equals 0 then the line is a tangent to the sphere intersecting it at one point, namely at u = -b/2a.
    # If it is greater then 0 the line intersects the sphere at two points.

    # for segment [0][0] -> [l][0] (0->1)
    a = (D[1][0]-D[0][0])**2+(D[1][1]-D[0][1])**2
    b = 2*((D[1][0]-D[0][0])*(D[0][0]-center[0])+(D[1][1]-D[0][1])*(D[0][1]-center[1]))
    c = center[0]**2 + center[1]**2 + D[0][0]**2 + D[0][1]**2 - 2*(center[0]*D[0][0]+center[1]*D[0][1])-r**2

    delta = b*b-4*a*c

    if delta < 0:
        pass
    elif delta >= 0:
        return False

    # for segment [0][0] -> [0][l] (0->2)
    a = (D[2][0]-D[0][0])**2+(D[2][1]-D[0][1])**2
    b = 2*((D[2][0]-D[0][0])*(D[0][0]-center[0])+(D[2][1]-D[0][1])*(D[0][1]-center[1]))
    c = center[0]**2 + center[1]**2 + D[0][0]**2 + D[0][1]**2 - 2*(center[0]*D[0][0]+center[1]*D[0][1])-r**2

    delta = b*b-4*a*c

    if delta < 0:
        pass
    elif delta >= 0:
        return False

    # for segment [0][l] -> [l][l] (2->3)
    a = (D[3][0]-D[2][0])**2+(D[3][1]-D[2][1])**2
    b = 2*((D[3][0]-D[2][0])*(D[2][0]-center[0])+(D[3][1]-D[2][1])*(D[2][1]-center[1]))
    c = center[0]**2 + center[1]**2 + D[2][0]**2 + D[2][1]**2 - 2*(center[0]*D[2][0]+center[1]*D[2][1])-r**2

    delta = b*b-4*a*c

    if delta < 0:
        pass
    elif delta >= 0:
        return False

    # for segment [l][0] -> [l][l] (1->3)
    a = (D[3][0]-D[1][0])**2+(D[3][1]-D[1][1])**2
    b = 2*((D[3][0]-D[1][0])*(D[1][0]-center[0])+(D[3][1]-D[1][1])*(D[1][1]-center[1]))
    c = center[0]**2 + center[1]**2 + D[1][0]**2 + D[1][1]**2 - 2*(center[0]*D[1][0]+center[1]*D[1][1])-r**2

    delta = b*b-4*a*c

    if delta < 0:
        pass
    elif delta >= 0:
        return False

    # return True if all deltas less than 0
    return True

def weighted_choice(weights):
    totals = []
    running_total = 0

    for w in weights:
        running_total += w
        totals.append(running_total)

    rnd = random.random() * running_total

    for i, total in enumerate(totals):
        if rnd < total:
            return i


def point_belongs_square_area(p,l):

    D = [[0,0],[l,0],[0,l],[l,l]]

    if ((p[0] > 0) & (p[0] < l)) & ((p[1] > 0) & (p[1] < l)):
        return True
    else:
        return False


def proximity_test(pz,p,d0):

    for node in enumerate(p):
        distance = math.sqrt((node[1][0]-pz[0])**2+(node[1][1]-pz[1])**2)
        if (distance < d0) & (distance > 0):
            return False
    return True


def form_candidate_graph(S,p,gtr):
    
    # create empty dictionaries
    Gc = {}
    neighbours = {}

    for i in range(0,len(S)):
        for j in range(0,len(S)):
            if i != j:
                distance = math.sqrt((p[j][0]-p[i][0])**2+(p[j][1]-p[i][1])**2)
                if distance <= gtr:
                    neighbours[S[j]] = distance
        Gc[S[i]] = neighbours
        neighbours = {}
    
    return Gc


def min_dpa(N,d,l,d0):
    
    r = math.sqrt((d*l*l)/(math.pi*(N-1)))
    
    connected = False  
    while not connected:

        # graph construction initial step: create first node randomly
        x = random.random()*l
        y = random.random()*l
        p = [[x,y]]
        S = ['node_1']
        
        # for the next rounds (>= 2nd round)
        for k in range(2, N):

            degrees = calculate_approximate_degrees(S,p,r) #of all nodes in Sk-1

            L = min(degrees) # min of approximate degrees

            weight = [0]*len(S)

            # for each node m in Sk-1 that has degree L do:
            for m, node in enumerate(S):
                if degrees[m] == L:
                    if disk_belongs_square_area(p[m], r, l):
                        weight[m] = 1
                    else:
                        weight[m] = 2./3
        
            # C(xc,yc) = randomize_center_select(weight)
            i = weighted_choice(weight)
            xc = p[i][0]
            yc = p[i][1]

            accepted = False
            while not accepted:
                v = random.random()*(r**2)
                a = math.sqrt(v)
                theta = random.random()*(2*math.pi)
                xz = xc + a*math.cos(theta)
                yz = yc + a*math.sin(theta)

                if not point_belongs_square_area([xz,yz],l):
                    print "New point not accepted: outside square region"
                elif not proximity_test([xz,yz],p,d0):
                    print "New point not accepted: failed proximity test"
                else:
                    p.append([xz,yz])
                    S.append('node_'+str(k))
                    accepted = True

        # Calculate edge lenghts lij = norm(pi,pj)
        edge_ij = []
        for i in range(0,len(S)):
            for j in range(i+1,len(S)):
                edge_ij.append(math.sqrt(math.pow((p[i][0]-p[j][0]),2)+math.pow((p[i][1]-p[j][1]),2)))

        # Sort lij i,j in {1,2,..., N}
        edge_ij.sort()

        # Select ((N*d)/2) shortest (to determine the actual transmition radius of the graph)
        try:
            graph_transmition_radius = edge_ij.pop((N*d)/2)

            # Form candidate graph Gc with ((N*d)/2) edges
            graph = form_candidate_graph(S,p,graph_transmition_radius)

            # Run Dijkstra for Gc
            Distances,Predecessors = dijkstra.Dijkstra(graph,S[0])

            # if all costs finite the connected will be True
            for i in graph:
                for j in graph[i]:
                    if graph[i][j] != numpy.inf:
                        connected = True
                    else:
                        connected = False
        except IndexError:
            print "Approximate degrees to high for the number of total nodes!"
            S = []
            p = []
            graph = {}
            return S,p,graph

    return S,p,graph

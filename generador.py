import networkx as nx
import random
import numpy as np
import sys

nombrellibres = int(sys.argv[1])
nombredesitjats = int(sys.argv[2])
nombrellegits = int(sys.argv[3])

f = open('provagenerador_' + str(nombrellibres) + '_' + str(nombredesitjats) + '_' + str(nombrellegits) + '.pddl', 'w')

G = nx.gnp_random_graph(nombrellibres, random.uniform(0.1, 0.9), directed=True)

DAG = nx.DiGraph([(u, v, {'weight': random.randint(1, 1)}) for (u, v) in G.edges() if u < v])
nx.is_directed_acyclic_graph(DAG)
nx.nodes(DAG)

f.write('(define (problem ext2_problema_1)\n  (:domain ext2_domini)\n  (:objects')
f.write('\n')

for i in nx.nodes(DAG):
    aux = ' llibre_' + str(i)
    f.write(aux)

f.write(' - llibre')
f.write('\n  gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes\n  )')

f.write('\n(:init')
f.write('\n  (mes_actual gener)')
f.write('\n  (mes_seguent gener febrer)')
f.write('\n  (mes_seguent febrer març)')
f.write('\n  (mes_seguent març abril)')
f.write('\n  (mes_seguent abril maig)')
f.write('\n  (mes_seguent maig juny)')
f.write('\n  (mes_seguent juny juliol)')
f.write('\n  (mes_seguent juliol agost)')
f.write('\n  (mes_seguent agost setembre)')
f.write('\n  (mes_seguent setembre octubre)')
f.write('\n  (mes_seguent octubre novembre)')
f.write('\n  (mes_seguent novembre desembre)\n ')

perm = list(DAG.edges())
topological_sorted = list(nx.topological_sort(DAG))

for i in range(len(topological_sorted)):
    if (i % 2 == 0 and (i + 1) < len(topological_sorted)):
        u = topological_sorted[i]
        v = topological_sorted[i + 1]
        if (u, v) in perm:
            perm.remove((u, v))
        if (v, u) in perm:
            perm.remove((v, u))
        f.write('\n  (paralel llibre_' + str(u) + ' llibre_' + str(v) + ')')
        f.write('\n  (paralel llibre_' + str(v) + ' llibre_' + str(u) + ')')

f.write('\n')

io = 0
for (u, v) in perm:
    if (io % 5 == 0):
        f.write('\n')
    f.write('\n  (predecesor llibre_' + str(v) + ' llibre_' + str(u) + ')')
    io = io + 1

f.write('\n')

llibres = list(DAG.nodes())
desitjats = []
ordre = list(nx.topological_sort(DAG))

for i in range(nombrellegits):
    f.write('\n  (llegit llibre_' + str(ordre[i]) + ')')
    llibres.remove(ordre[i])

f.write('\n')

for i in range(nombredesitjats):
    if len(llibres) > 0:
        aux = np.random.randint(0, len(llibres))
        if aux < len(ordre):
            f.write('\n  (llibre_desitjat llibre_' + str(llibres[aux]) + ')')
            desitjats.append(llibres[aux])
            llibres.remove(llibres[aux])
f.write('\n)')
f.write('\n')

f.write('\n(:goal\n (forall\n  (?llibre - llibre)\n  (or (not (llibre_desitjat ?llibre))\n      (llegit ?llibre))))\n)\n')
f.close()
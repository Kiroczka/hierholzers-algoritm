//
// Created by Kira on 5/16/2018.
//
#include <vector>
#include "../edge/Edge.h"

#ifndef HEIRHOLZERS_ALGORITHM_GRAPH_H
#define HEIRHOLZERS_ALGORITHM_GRAPH_H


class Graph
{
    int vertexesCount;
    Edge**Edges;
    int* degrees;
public:
    Graph(int);
    ~Graph();
    int* getDegrees();
    void addEdge(int, int);
    void removeEdge(int,Edge*);
    vector<int> getEulerCycle();
    bool isIsolatedVertex(int);
    bool isEulerGraph();
};

#endif HEIRHOLZERS_ALGORITHM_GRAPH_H

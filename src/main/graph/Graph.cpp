//
// Created by Kira on 5/16/2018.
//

#include <iostream>
#include <stack>
#include "Graph.h"

using namespace std;

Graph::Graph(int V) {
    this->vertexesCount = V;
    Edges = new Edge *[V];
    degrees = new int[V];
    for (int i = 0; i < V; i++){
        Edges[i] = new Edge(i);
        degrees[i]=0;
    }
}

Graph::~Graph() {
    for (int i = 0; i < vertexesCount; i++)
        delete[] Edges[i];
    delete[] Edges;
}

void Graph::addEdge(int u, int v) {
    Edge *current = Edges[u];
    Edge *next = current->right;
    while (next != nullptr) {
        current = next;
        next = current->right;
    }
    Edge *last1 = new Edge(v, current, nullptr);
    current->right = last1;

    current = Edges[v];
    next = current->right;
    while (next != nullptr) {
        current = next;
        next = current->right;
    }
    Edge *last2 = new Edge(u, current, nullptr, last1);
    current->right = last2;
    last1->oppositeDirection = last2;

    degrees[u]++;
    degrees[v]++;
}

vector<int> Graph::getEulerCycle() {
    vector<int> eulerCycle;
    stack<Edge *> S;
    Edge *v = Edges[0];
    eulerCycle.push_back(0);
    Edge *w;
    while (true) {
        while (!isIsolatedVertex(v->vertex)) {
            w = v->right;
            S.push(v);
            int w_nr = w->vertex;
            //cout << " " << '\'' << w_nr << '\'' <<" ";
            removeEdge(v->vertex, w);
            v = Edges[w_nr];
        }
        if (S.empty())
            return eulerCycle;
        else {
            int v_nr = S.top()->vertex;
            v = Edges[v_nr];
            S.pop();
            eulerCycle.push_back(v_nr);
        }
    }
}

bool Graph::isIsolatedVertex(int v) {
    return Edges[v]->right == nullptr;
}

bool Graph::isEulerGraph() {
    int oddVertexesCount = 0;
    for (int i = 0; i < vertexesCount; i++) {
        oddVertexesCount += degrees[i] % 2;
        if (oddVertexesCount > 2) return false;
    }
    if (!(oddVertexesCount == 0 || vertexesCount == 2)) return false;
    return true;
}

void Graph::removeEdge(int startVertex, Edge *edge) {
    degrees[startVertex]--;
    degrees[edge->vertex]--;
    edge->oppositeDirection->remove();
    edge->remove();
}

int* Graph::getDegrees() {
    return degrees;
}

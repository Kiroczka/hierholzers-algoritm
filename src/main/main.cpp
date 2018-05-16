#include <iostream>
#include <algorithm>
#include "graph/Graph.h"

using namespace std;


int main() {
    Graph graph(11);
    graph.addEdge(0, 1);
    graph.addEdge(1, 2);
    graph.addEdge(2, 3);
    graph.addEdge(3, 4);
    graph.addEdge(4, 5);
    graph.addEdge(5, 0);
    graph.addEdge(2, 6);
    graph.addEdge(6, 7);
    graph.addEdge(7, 8);
    graph.addEdge(8, 2);
    graph.addEdge(3, 9);
    graph.addEdge(9, 10);
    graph.addEdge(10, 3);

    int * degrees = graph.getDegrees();
    for(int i=0; i<11; i++)
        cout<<degrees[i]<<" ";
    cout<<endl;

    if(!graph.isEulerGraph()) cout<<"The Graph isn't an Euler graph"<<endl;
    auto print = [](const int &n) { std::cout << n << " "; };

    vector<int> eulerCycle = graph.getEulerCycle();
    for_each(eulerCycle.begin(), eulerCycle.end(), print);

    return 0;
}
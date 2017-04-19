//: Playground - noun: a place where people can play

// MARK: - Objects to build adjancency list connections

//Basic Edge data structure
public class Edge {
    
    var nearby: Vertex
    var weight: Int
    
    init() {
        weight = 0
        self.nearby = Vertex()//Vertecies near this edge
    }
}

//Basic vertex data structure
public class Vertex {
    
    var key: String? // The search value used to find paths
    var nearbyPaths: Array<Edge> //An arr that tracks the connection to other verticies
    
    //Object init 
    init() {
        self.nearbyPaths = Array<Edge>()
    }
}

// MARK: - Node tracking
class Path {
    
    var total: Int! //Total number of possible paths
    var destination: Vertex
    var previous: Path!
    
    //Object init
    init() {
        destination = Vertex()
    }
}

/*
 * Shortest path method based on Djikstra's shortest path equation.
 */

func processPathForSource(source: Vertex, destination: Vertex) -> Path? {
  
    //Begin graph traversion
    var frontier: Array<Path> = Array<Path>()
    var finalPaths: Array<Path> = Array<Path>()
}

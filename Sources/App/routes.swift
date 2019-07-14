import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works fine!"
    }

    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.post("api","acronyms") { req -> Future<Acronym> in
        print("Hello")
        return try req.content.decode(Acronym.self)
            .flatMap(to: Acronym.self) { acronym in
                return acronym.save(on: req)
        }
        
    }

//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
}

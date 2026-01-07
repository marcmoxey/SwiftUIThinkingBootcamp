import Foundation

// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value type
// Value types are copied & mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Struct have implicit init
    //    init(title: String, dateCreated: Date) {
    //        self.title = title
    //        self.dateCreated = dateCreated
    //    }
    
    
    //    init(title: String, dateCreated: Date = .now) {
    //        self.title = title
    //        self.dateCreated = dateCreated
    //    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? Date()
        self.isPremium = isPremium
    }
    
    
    
}


let myObject: String = "Hello, world!"

//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz 1")
//let myQuiz: Quiz = Quiz(title: "Quiz 1", isPremium: nil)
//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: false)



//print(myQuiz.title)

// "Immutable struct" = all "let" constants = NOT mutable = "cannot mutate it!"
struct UserModel {
    let name: String
    let isPremium: Bool
}


var user1: UserModel = UserModel(name: "Marc", isPremium: false)


@MainActor
func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

markUserAsPremium()


// "mutable struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}


var user2 = UserModel2(name: "Marc", isPremium: false)


@MainActor
func markUserAsPremium2() {
    print(user2)
    
    // "mutate"  the struct
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()



struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium() -> UserModel3 {
        return UserModel3(name: name, isPremium: true)
    }
}

var user3 = UserModel3(name: "Marc", isPremium: false)
user3 = user3.markUserAsPremium()


// "mutable strcut"

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool // only set the value of premium here 
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
}

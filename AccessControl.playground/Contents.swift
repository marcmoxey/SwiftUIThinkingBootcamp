import UIKit



// Rule of thumb:
// We want everything private as possible
// This makes your code easier to read/debug and is good coding practice 


struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var  isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        return MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {
        return isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy
    case action
    case horror
}

class MovieManager {
    
    // can get and set
    var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // can only access inside the class
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read but cant update(set)
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavorite: false)
    
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}



let manager = MovieManager()
//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie1.updateFavoriteStatus2(newValue: true)
//print(manager.movie1)

manager.updateMovie3(isFavorite: true)
print(manager.movie3)


// Version 1
// WE can GET and SET the value from outside the object
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)


// Version 2
// We can'ts GET or SET the value from outside the object.
// "cannot access"
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

// Verison 3
// We can GET the value from outside the object, but we can't SET value from outside the object
// "best practice"
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)


// Note: private & public are by far most common but there are many others
// open
// public
// internal
// fileprivate
// private

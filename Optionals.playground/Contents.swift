import UIKit

// "There is always a value and it is a boolean"
let myBool: Bool = false


// "We don't know if thdre is a value, but if there is, ut us a boolean"
var myOtherBool: Bool? = nil

print(myOtherBool)
myOtherBool = true
print(myOtherBool)
myOtherBool = false
print(myOtherBool)
myOtherBool = nil
print(myOtherBool)

// nil coalescing operator
let newValue: Bool? = myOtherBool

// "The value of myOtherBool (if there is one), otherwise false
let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")


var myString: String? = "Hello, world!"
print(myString ?? "There is no value")

myString = "New Text!"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

//let newString = myString ?? "some default value"


var userIsPremium: Bool? = nil

@MainActor
func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}


@MainActor
func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}


let isPremium = checkIfUserIsPremium2()


// if let
// When if-let is successful, enter the closure
@MainActor
func checkIfUserIsPremium3() -> Bool {
    
    // if there is a value, let newValue equal that value
    if let newValue = userIsPremium { // success enter the closure
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}

@MainActor
func checkIfUserIsPremium4() -> Bool {
    
   
    if let newValue = userIsPremium {

        return newValue
    }
    return false
    
}


@MainActor
func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        
        return userIsPremium
    }
    return false
    
}


// Guard
// When a guard a failure, enter the closure
@MainActor
func checkIfUserIsPremium6() -> Bool {
    
    // Make sure there is a value
    // if there is a value let newValue equal that value
    // else return out of the function
    guard let newValue = userIsPremium  else { // failure enter this closure
        return false
    }
    
    // here we have access to non-optional value
    return newValue
}

@MainActor
func checkIfUserIsPremium7() -> Bool {
    
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}


var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

@MainActor
func checkIfUserIsSetUp() -> Bool {
    
    if let isNew = userIsNew,
        let didCompleteOnboarding = userDidCompleteOnboarding,
        let favoriteMovie = userFavoriteMovie {
        // userIsNew == BOOL AND
        // userDidCompleteOnboarding == BOOL AND
        // userFavoriteMovie == String
        
        return getUserStatus(userIsNew: isNew,
                             userDidCompleteOnboarding: didCompleteOnboarding,
                             userFavoriteMovie: favoriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}




@MainActor
func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
    // userIsNew == BOOL AND
    // userDidCompleteOnboarding == BOOL AND
    // userFavoriteMovie == String
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding: userDidCompleteOnboarding,
                         userFavoriteMovie: userFavoriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool{
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
    
}


// layer if-let
@MainActor
func checkIfUserIsSetUp3() -> Bool {
    
    
    if let userIsNew {
        // userIsNew = Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoiteMovie == String
                return getUserStatus(userIsNew: userIsNew,
                                     userDidCompleteOnboarding:  userDidCompleteOnboarding,
                                     userFavoriteMovie: userFavoriteMovie)
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
        
    } else {
        // userIsNew == nil
        return false
    }
}


// layered gaurd
@MainActor
func checkIfUserIsSetUp4() -> Bool {
    
    guard let userIsNew else {
        // userIsNew == false
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidComplete == false
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == false
        return false
    }
    // userFavoriteMovie == String
    
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding:  userDidCompleteOnboarding,
                         userFavoriteMovie: userFavoriteMovie)
 
}


// Optional chaining

func getUsername() -> String? {
    return "Test"
}

func getTitle() -> String {
    return "Tite"
}

func getUserData() {
    
    let username: String? = getUsername()
    
    // "I will get the count uf the username is not nil"
    let count = username?.count
    
    let title: String = getTitle()
    
    // "I will get the count always"
    let count2 = title.count
    
    // if username has a value, and the first charcter in username has a value, then return the value of isLowercase
    // optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    // "I will get the count becuase I know 100% that username is not nil
    // This will crash your application if username is nil
    let count3: Int = username!.count
}


// safely unwrap an optional
// nil coalscing
// if-let
// gaurd



// explicity unwrap optional
// !

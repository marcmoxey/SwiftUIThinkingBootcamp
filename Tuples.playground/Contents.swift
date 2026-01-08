import UIKit


var userName: String = "Hello"
var userIsPremium = false
var userIsNew: Bool = true


@MainActor
func getUsername() -> String {
    return userName
}


@MainActor
func getUserIsPremium() -> Bool {
    return userIsPremium
}


// limit to on return type
@MainActor
func getUserInfo() -> String {
    
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return name
}

// tuple can combind multiple pieces of data
@MainActor
func getUserInfo2() -> (String, Bool) {
    
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}


var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium ,userIsNew)

let info1 = getUserInfo2()
//let name1: String = info1.0

@MainActor
func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}


let info2 = getUserInfo3()
let name2 = info2.name


@MainActor
func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

@MainActor
func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}


let info = getUserInfo4()
doSomethingWithUserInfo(info: info)

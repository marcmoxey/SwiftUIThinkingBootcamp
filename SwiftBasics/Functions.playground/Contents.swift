import UIKit


func myFirstFunction() {
    print("MY FIRST FUNCTION CALL")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("MY SECOND FUNCTION CALL")
}


func myThirdFunction() {
    print("MY THIRD FUNCTION CALL ")
}


myFirstFunction()


func getUsername() -> String {
    let username: String  = "Marc"

    return username
}

func checkIfUserIsPremium() -> Bool {
    return false
}

let name: String = getUsername()
//print(name)


func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    
    let status = checkUserStatus(
        didCompleteOnboarding: userDidCompleteOnboarding,
        profileIsCreated: userProfileIsCreated
    )
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}



func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}


showFirstScreen()


doSomething()


func doSomething() -> String{
//    print("EXECUTE 1")
//    var isNew: Bool = false
//    
//    if isNew {
//        print("NEW")
//    } else {
//        print("NOT NEW")
//    }
    
    var title: String  = "Avengers"
    
    // if title is equal to Avengers
    if title == "Avengers" {
        return "Marvel" // returns here
    } else {
        return "Not Marvel" // or here
    }
    
    // when hit return noting execute after that line
    
}

doSomethingElse()

func doSomethingElse() {
    var title: String = "Avengers"
    
    // "Make sure title == Avengers"
    guard title == "Avengers" else {
        print("Not Marvel")
        return
    }
    
    print("Marvel")
}


checkIfTitleIsAvengers()
func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    // "Make sure title == Avengers"
    guard title == "Avengers" else { // if guard is false enter the closure
        print("Not Marvel")
        return false
    }
    
   return true
}

checkIfTitleIsAvengers2()

func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return true
    } else{
        return false
    }
}


// Calculated variables are basically functions
// Generally good for when you don't need to pass data into the function

let number1 = 5
let number2 = 2

func calculatedNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let result1 = calculatedNumbers()
let result2 = calculateNumbers(num1: number1, num2: number2)



var calculatedNumber: Int {
    return number1 + number2
}

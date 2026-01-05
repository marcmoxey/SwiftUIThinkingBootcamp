import UIKit


// Constant
let someConstant: Bool = true


// Variable
var someVariable: Bool = true

//Cannot assign to value: 'someConstant' is a 'let' constant
//someConstant = false

someVariable = false
 

var myNumber = 1.24324
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 4432352
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458
print(myNumber)


// if statements

var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 - user is not premium")
}

if userIsPremium {
    print("2 - user is premium")
}

if userIsPremium == false {
    print("3 - user is not premium ")
}

if !userIsPremium {
    print("4 - user is not premium")
}


userIsPremium ? print("5 - user is premium") : print("6 - user is not premium")

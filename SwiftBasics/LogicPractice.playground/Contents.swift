import UIKit


// Even or Odd checker
let number = -28

if number < 0 {
    print("the number neagtive")
}
else if number % 2 == 0 {
    print("The number is even")
} else  {
    print("The number is odd")
}

// Grade Calcultor
let score = 85

if score > 100 || score <= 0 {
    print("Invalid Score")
} else if score >= 90 {
    print("Grade: A")
} else if score >= 80 {
    print("Grade: B")
} else if score >= 70 {
    print("Grade: C")
} else {
    print("Grade: F")
}

// Login Validator
let username = "admin"
let password = "1234"

if username == "admin" && password == "1234" {
    print("Login successful")
} else if username == "admin" && password != "1234" {
    print("password was incorrect")
}   else if username != "admin" && password == "1234" {
    print("username was invalid")
} else {
    print("invalid credentals")
}


// Temperature Advisor
let temp = 15
let wind = true
let rain = true

if temp < 0 {
    print("Wear a heavy coat")
} else if temp <= 15 {
    print("Wear a jacket")
} else if temp <= 15 && rain {
    print("bring an umbrella it raining")
} else if temp <= 25 && wind {
    print("Wear a long seleve shirt it windy")
} else if temp <= 25 {
    print("wear a t-shirt")
} else {
    print("it's hot! Stay cool")
}

// Simple Calculator (two numbers)

let a = 10
let b = 0
let operation = "/"

if operation == "+"  {
    print(a + b)
} else if operation == "-" {
    print(a - b)
} else if operation == "*" {
    print(a * b)
} else if operation == "/" {
    if b == 0 {
        print("Error dividing by zero")
    } else {
        print( a / b)
    }
} else {
    print("unknow operation")
}

import UIKit

/*
 
 
 // Object Oriented Programming
 
 // During the life the app, we create and destory objects
 // Create = Initialize (init) = Allocate (add to memory)
 // Destory = Deinitialize (deinit) = Deallocate (removing from memory)
 
 //  Automatic Reference Counting (ARC)
 // A live count if number of objects in memory
 // Create 1 object, count goes up by 1
 // Create 2 objects, count goes up by 2
 // Destory 1 object, count goes down 1
 
 // The more objects in memory, the slower the app performs
 // We want to keep the ARC count as low as possible
 // We want to create objects only when we need them
 // And destory them as soon as we no longer need them
 
 // For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it(i.e. when the user clicks a button to segure to screen 2). When we get to screen 2, we may want to deallocate screen 1.
 
 // There are 2 types of memory
 // Stack & Heap
 // Only objects in the Heap are counted towards ARC
 
 
 // Onjects in the Stack
 // String, Bool, Int, most basic types
 // New: Struct, Enum
 
 // Objects in the Heap
 // Functions
 // New: Class, Actors
 
 // iPhone is a "multi-threaded enviroment"
 // There are multiple "threads" or "engines" running simultaneously
 // Each thread has a Stack
 // But there is only 1 Heap for all threads
 
 // Therefore:
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint, risk of threading issues
 
 // Value vs Refernce types
 
 // Objects in the Stack are "Value" type
 // When you edit a value type, you create a copy of it with new data
 
 // Ojects in the Heap are "Refernce" Types
 // When you edit a Refernece type, you edit the object that you are referencing. This "reference" is called a "pointer" becuase it "points" to an object in the Heap (in memory)
 
 
 */

struct MyFirstObject {
    let title: String = "Hello, world!"
}


class mySecondObject {
    let title: String = "Hello, world!"
}


// Class vs Struct explained to a 5-year old

// Imagine a school and in the school there are classrooms.
// Within each class, there are quizzes.
// During the day, the teacher will hand out many differnet quizzes to different classes. The students will answwer the quizzes and return them back to the teacher

// "school" = App
// "classroom" = Class
// "quiz" = Struct

// In this example, we have a classroom and there are many action the occur inside the classroom.
// In code, we create a class and can perform actions within the class

// In this example, there are many differnt type of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher
// In Code, we create many structs and pass them around out app with ease

// We want to use a class for things like:
// "Manager" "DataService" "service "Factory" "ViewModel"
// Object that we create and want to perform actions inside

// We want to use a struct for things like:
// Data models
// Objects that we create and pass around our app

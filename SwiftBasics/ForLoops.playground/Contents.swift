import UIKit

for i in 0..<100 {
    print(i)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilion"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
  
}


let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
    
    ]

var favoriteLesson: [LessonModel] = []
for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLesson.append(lesson)
    }
}

print(favoriteLesson)

for (index, lesson) in allLessons.enumerated() {
    //if index > 2
    
    if index == 1 {
       // break
        continue
    }
    
    print("index: \(index) || lessons: \(lesson)")
}

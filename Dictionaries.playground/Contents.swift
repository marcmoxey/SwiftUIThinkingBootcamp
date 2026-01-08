import UIKit


var finalFruits: [String] = ["Apple", "Banana", "Orange", "Apple"]
print(finalFruits)

let myFruit = finalFruits[1]


var fruitsSet: Set<String> = ["Apple", "Banana", "Orange", "Apple"]
print(fruitsSet)


var myFirstDictionary: [String:Bool] = [
    "Apple":true,
    "Orange": false
    ]

// can access any key(same type) that doesnt exist and wont crash the app
let item = myFirstDictionary["Orange"]

var anotherDictionary: [String: String] = [
    
    "abc": "Apple",
    "def": "Banana"
]

let item2 = anotherDictionary["abc"]


anotherDictionary["xyz"] = "Mango"
anotherDictionary.removeValue(forKey: "def")
print(anotherDictionary)


struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz987", title: "Post 3", likeCount:217)
]


if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}


var postDict: [String: PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz" : PostModel(id: "xyz987", title: "Post 3", likeCount:217)
]


let myNewItem = postDict["def678"]
print(myNewItem)

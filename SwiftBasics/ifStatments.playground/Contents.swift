import UIKit

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// Addition
//likeCount += 1


// Subtraction
//likeCount -= 1


// Multiplication
//likeCount *= 1.5


// Division
//likeCount /= 2


// Order of operation does matter!
// PEMDAS


//likeCount -= 1 * 1.5
//(likeCount - 1) * 1.5

//likeCount += 1

if likeCount == 5 {
    print("Post has 5 likes")
} else {
    print("Post does NOT have 5 likes")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes")
}

if likeCount > 5 {
    print("Post has greater tha 5 likes")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes")
}

if likeCount <= 5 {
    print("Post has less than or equal to 5 likes")
}

if (likeCount > 3) && (commentCount > 0) {
    print("Post has greater than 3 likes and greater than 0 comments")
} else {
    print("Post has 3 or less likes OR post has 0 or less comments")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater thab 3 likes OR greater than 0 comments")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments")
}


var userIsPremium: Bool = false
var userIsNew: Bool = false


if userIsPremium && userIsNew {
    
}



if (likeCount > 3 && commentCount > 0) || viewCount > 50 {
    print("EXECUTE")
}

if likeCount > 100 && (commentCount > 0 || viewCount > 50) {
    print("EXECUTE")
}


if likeCount > 5 || userIsPremium {
    
}


if likeCount > 5 {
    print("Like count greater than 5 ")
} else if likeCount > 2 {
    print("like count greater than 2")
} else if userIsPremium {
    print("user is premium")
} else {
    print("eles statement")
}

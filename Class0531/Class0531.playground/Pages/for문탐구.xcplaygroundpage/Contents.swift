//: [Previous](@previous)

import Foundation

var arr = [1,3,4,5,6]

arr[0]
arr[1]
//
//for i in arr {
//    print(i, "dd")
//    print(arr[i], "vv")
//}
//: [Next](@next)

3 == 3

//랜덤 1에서 10까지
let randomNo: UInt32 = arc4random_uniform(10) + 1
let randomNo1: UInt32 = arc4random()
let randomNo2: Double = drand48()

print(randomNo)
print(randomNo1)
print(randomNo2)


let a = Int(arc4random_uniform(10)+1)


type(of: a)

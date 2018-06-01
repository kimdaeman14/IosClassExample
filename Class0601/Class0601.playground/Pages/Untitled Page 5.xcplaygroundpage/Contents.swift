//: [Previous](@previous)

import Foundation


var read = "434444"
var arr = read.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })

print(arr)
type(of: arr)
print(arr[0])



//: [Next](@next)

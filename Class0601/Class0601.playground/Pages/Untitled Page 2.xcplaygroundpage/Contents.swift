//: [Previous](@previous)

// 문자값 "1 2 3 * 4 5" 이 왔을때 이것을 계산하는법

import Foundation

let fullName = "1 2 3 * 4 5"
let fullNameArr = fullName.characters.split{$0 == " "}.map(String.init)

fullNameArr[0] // First
fullNameArr[1] // Last
fullNameArr[2] // Last
fullNameArr[3] // Last
fullNameArr[4] // Last
fullNameArr[5] // Last

var num1 = 0
var num2 = 0
var num3 = 0
var num4 = 0
var num5 = 0
var num6 = 0
var num7 = 0
var num8 = 0
var num9 = 0
var num0 = 0




for i in fullNameArr {
    
    switch i {
    case "1" :
        num1 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "2" :
        num2 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "3" :
        num3 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "4" :
        num4 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "5" :
        num5 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "6" :
        num6 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "7" :
        num7 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "8" :
        num8 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "9" :
        num9 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "0" :
        num0 = Int(i)!
        print(i)
        print(type(of: num1))
        continue
    case "*", "/", "+", "-":
       print(i)
        continue
    default:
        print("asdfasdfdasfasfasdf")
    }
}




//: [Next](@next)

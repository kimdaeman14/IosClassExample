//: [Previous](@previous)

import Foundation

func random(_ n: Int) -> String {
    let a = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    var s = ""
    for _ in 0..<n{
        let r = Int(arc4random_uniform(UInt32(a.characters.count)))
        s += String(a[a.index(a.startIndex, offsetBy: r)])
    }
    return s
}

print(random(8))





let sum: (Int, Int) -> Int = { (a: Int, b: Int) in return a + b }

type(of: sum)

let num1 : Int

num1 = sum(5,5)

let num2 : Int

num2 = sum(10,10)

func sum2(a:Int, b:Int) -> Int {
    return a+b
}
let sum1: Int = sum2(a: 3, b: 3)



//: [Next](@next)

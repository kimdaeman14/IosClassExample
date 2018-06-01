//: [Previous](@previous)

import Foundation

func update(age: Int) {
    if 0..<10 ~= age {
        print("0부터 10사이")
    }else if 10..<20 ~= age {
        print("10부터 20사이")
    }else{
        print("둘다 아니야.")
    }
}

update(age: 100)

func update1(age: Int) {
    guard 0...20 ~= age
        //    , age == 100
        else { return }
    print("Pass")
}
update1(age: 100)

//: [Next](@next)

//: Playground - noun: a place where people can play

import UIKit



//1. 강아지들의 나이를 합산한 결과를 반환하는 sum 함수 구현

func sum() -> Int {
    var ageSum = 0
    for pet in myPet {
        guard pet.type == .dog else { continue }
        ageSum += pet.age
    }
    return ageSum
}

func mapSum() -> Int {
    return myPet
        .filter { $0.type == .dog }
        .reduce(0) { $0 + $1.age }
}

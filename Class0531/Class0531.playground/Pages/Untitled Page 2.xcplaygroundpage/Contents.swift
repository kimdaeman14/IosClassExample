//: [Previous](@previous)

import Foundation



struct Pet {
    enum PetType {
        case dog, cat, snake, pig, bird
    }
    var type: PetType
    var age: Int
}


let myPet = [ //mypet에다가
    Pet(type: .dog, age: 13),
    Pet(type: .dog, age: 2),
    Pet(type: .dog, age: 7),
    Pet(type: .cat, age: 9),
    Pet(type: .snake, age: 4),
    Pet(type: .pig, age: 5),
]


//2. 모든 펫의 나이를 1씩 더한 배열을 반환하는 newAge 함수 구현

func newAge() -> [Pet] {
    var newAge = [Pet]()
    for pet in myPet {
        newAge.append(Pet(type: pet.type, age: pet.age + 1))
    }
    return newAge
}
//
//func mapNewAge() -> [Pet] {
//    return myPet.map {
//    }
//    Pet(type: $0.type, age: $0.age + 1)
//}

//: [Next](@next)

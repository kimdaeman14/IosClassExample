//: [Previous](@previous)

import Foundation


let immutableArray = Array(1...40)

//1.배열의 각요소 * index값을 반환하는 함수

let result2 = immutableArray.enumerated().map {
    return $0 * $1
}





//2.배열요소 중 홀수는 제외하고 짝수만 반환하는 함수

for i in immutableArray {
    if(i % 2 == 0){
        print(i)
    }
}

//3.배열의 모든 값을 더하여 반환하는 구현
var result = 0
for i in immutableArray {
    result += i
}



immutableArray.reduce(1) { (sum, next) in
    sum + next
}

//4.immutableArray에 대해서 1~3번 함수를 차례대로 적용한 최종 값을 반환
















//: [Next](@next)

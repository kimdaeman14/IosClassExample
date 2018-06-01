//: [Previous](@previous)

import Foundation


//var alphabetArray: Array<String> = []
//var alphabetArray: [String] = []
//var alphabetArray = [String]()
var alphabetArray = ["A"]

alphabetArray.append("B")
//alphabetArray.append(1)

alphabetArray += ["C"]

var alphabetArray2 = ["Q", "W", "E"]
alphabetArray + alphabetArray2

alphabetArray.insert("S", at: 0)
alphabetArray.insert("F", at: 3)


//어떤 메소드를 실행할때마다 int값으로 배열에 append되는 함수구현
//123 을 누르면 그 값을 하나의 변수에 저장할수있도록 하는.
var arr1: Array<Int> = []

func sumarr(a:Int){
    arr1.append(a)
}

sumarr(a: 1)
sumarr(a: 3)
sumarr(a: 4)
sumarr(a: 6)
sumarr(a: 4)
sumarr(a: 12)

//print(arr1)

type(of: arr1)



//var arr: Array<Int> = []
//func write1(){
//    arr.append(1)
//
//}
/*



let intArr: [Int] = Array<Int>(repeating: 2, count: 10)
let result2 = intArr.enumerated().map { //enumerated 인덱스값을 받는 함수
    return $0 + $1  // 앞에가 오프셋 뒤에가 엘리먼트인데 오프셋이 0123456789 뒤에가 2222222222
}
type(of: result2)*/


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.map {
    $0 + "'s name"
}





//
//var names = ["1", "2", "123", "33", "456"]
//let num = map{(Int, names)}
//print(num)

//list_a = ['1', '2', '3', '4']   -> list_a = [1, 2, 3, 4] 로 바꾸고 싶을 때,
//list_a = map(int, list_a)   를 해주면 된다.
//
//
//var read = "434444"
//var arr = read.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
//print(arr[0]+arr[1])
//
//









//: [Next](@next)

//: Playground - noun: a place where people can play


//input : int -> output: func( void -> int)
func makeIncrementer(forIncrement amount: Int)-> (()->Int){
    var runningTotal = 0
    print("1 \(runningTotal)\n")
    func incrementer() -> Int{
        runningTotal += amount
        print("in \(runningTotal)\n")
        return runningTotal
    }
    print("2 \(runningTotal) \n")
    return incrementer
}

let incrementByTwo: (()->Int) = makeIncrementer(forIncrement: 2)

let first : Int = incrementByTwo()
print("")
let second: Int = incrementByTwo()
print("")
let third: Int = incrementByTwo()
print("")
let fouth : Int = incrementByTwo()
print("")

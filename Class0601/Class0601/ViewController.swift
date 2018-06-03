//
//  ViewController.swift
//  Class0601
//
//  Created by kimdaeman14 on 2018. 6. 1..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    let label = UILabel(frame: CGRect(x: 15, y: 20 , width: 295, height: 120))
    var arr: Array<Int> = []
    var total: String = ""
    var input : String = ""
    var firstnumber = 0
    var secondnumber = 0
    var resultnumber = 0
    var count = 1
    var calculatorSign = ""
    
    @objc func calculatorSign(sign : UIButton){
        label.text = sign.currentTitle
        calculatorSign = label.text!
        
        switch calculatorSign {
        case "+":
            plusCalculator()
        case "×":
            multiplyCalculator()
        case "÷":
            divideCalculator()
        case "-":
            minusCalculator()
//        case "=":
//            intFirstConversion()
        default:
            print(calculatorSign)
        }
        
    }
    
//    =========================버튼을 누르면 실행되는 쓰기 메소드================================
    @objc func write(number : UIButton){
        label.text = number.currentTitle
        input = label.text!
        for _ in input {
            total += input
        }
        print("토탈값 : \(total)")
        print("count : \(count)")

    }
    
//=========이버튼을 누르면 문자열값 total이 map을 통해서 int로바뀌고 하나의 변수에 저장되도록하는 함수=======
    
    @objc func plusCalculator(){
        print("count : \(count)")
            if count == 1 {
                 arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
                firstnumber = arr[0]
                print("int형으로 변환된 값 : \(firstnumber)")
                total = ""
                count += 1

            }else {
                 arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
                secondnumber = arr[0]
                print("두번째 int형으로 변환된 값 : \(secondnumber)")
                total = ""
                resultnumber = firstnumber + secondnumber
                label.text = "\(resultnumber)"
                print("결과값은 \(resultnumber)입니다.")
                firstnumber = resultnumber
                total = ""
            }
        print(count, "count")
        }

    
    @objc func minusCalculator(){
        print("count : \(count)")
        if count == 1 {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            firstnumber = arr[0]
            print("int형으로 변환된 값 : \(firstnumber)")
            total = ""
            count += 1
            
        }else {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            secondnumber = arr[0]
            print("두번째 int형으로 변환된 값 : \(secondnumber)")
            total = ""
            resultnumber = firstnumber - secondnumber
            label.text = "\(resultnumber)"
            print("결과값은 \(resultnumber)입니다.")
            firstnumber = resultnumber
            total = ""
        }
        print(count, "count")
    }
    
    
    
    @objc func multiplyCalculator(){
        print("count : \(count)")
        if count == 1 {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            firstnumber = arr[0]
            print("int형으로 변환된 값 : \(firstnumber)")
            total = ""
            count += 1
            
        }else {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            secondnumber = arr[0]
            print("두번째 int형으로 변환된 값 : \(secondnumber)")
            total = ""
            resultnumber = firstnumber * secondnumber
            label.text = "\(resultnumber)"
            print("결과값은 \(resultnumber)입니다.")
            firstnumber = resultnumber
            total = ""
        }
        print(count, "count")
    }
    
    
    @objc func divideCalculator(){
        print("count : \(count)")
        if count == 1 {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            firstnumber = arr[0]
            print("int형으로 변환된 값 : \(firstnumber)")
            total = ""
            count += 1
            
        }else {
            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
            secondnumber = arr[0]
            print("두번째 int형으로 변환된 값 : \(secondnumber)")
            total = ""
            resultnumber = firstnumber / secondnumber
            label.text = "\(resultnumber)"
            print("결과값은 \(resultnumber)입니다.")
            firstnumber = resultnumber
            total = ""
        }
        print(count, "count")
    }
    
//
//    @objc func resultButten(){
//        print("count : \(count)")
//        if count == 1 {
//            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
//            firstnumber = arr[0]
//            print("int형으로 변환된 값 : \(firstnumber)")
//            total = ""
//            count += 1
//
//        }else {
//            arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
//            secondnumber = arr[0]
//            print("두번째 int형으로 변환된 값 : \(secondnumber)")
//            total = ""
//            resultnumber = firstnumber / secondnumber
//            label.text = "\(resultnumber)"
//            print("결과값은 \(resultnumber)입니다.")
//            firstnumber = resultnumber
//            total = ""
//        }
//        print(count, "count")
//    }
//
    
    
//=========이버튼을 누르면 다시 시작된 토탈이 인트형으로 변환이되서 secondnumber에 들어가고===========
//========================firstnumber   secondnumber가 연산을 하고
//===========================결과값이 다시firstnumber로 바껴야해 .
//    @objc func resultButten(){
//        var arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
//        secondnumber = arr[0]
//        print(arr)
//        print("두번째변환된값 \(arr[0])")
//        count += 1
//        print(count, "count")
//plusCalculator()
//    }
//=========================실질적인 계산을 하는 메소드 =================================
    

    @objc func reset(){
        label.text = "0"
        firstnumber = 0
        secondnumber = 0
        resultnumber = 0
        total = ""
        printarr()
    }
    
    @objc func printarr(){
        print("토탈값 : \(total)")
        print("첫번째값 : \(firstnumber)")
        print("두번째값 : \(secondnumber)")
        print("결과값 : \(resultnumber)")
    }
    
    
//======================================viewDidLoad==========================================
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view
        view.backgroundColor = .black
        
        //lable
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 80)
        label.textAlignment = NSTextAlignment.right
        label.textColor = .white
        view.addSubview(label)

        
        //ac
        let ac = UIButton(frame: CGRect(x: 15, y: 150, width: 70, height: 70))
        ac.setTitle("AC", for: .normal)
        ac.layer.cornerRadius = 35
        ac.backgroundColor = .lightGray
        ac.addTarget(self, action: #selector(write), for: .touchUpInside)
        ac.setTitleColor( .black, for: .normal)
        view.addSubview(ac)

        //conversionPlusMinus
        let conversionPlusMinus = UIButton(frame: CGRect(x: 90, y: 150, width: 70, height: 70))
        conversionPlusMinus.setTitle("±", for: .normal)
        conversionPlusMinus.layer.cornerRadius = 35
        conversionPlusMinus.backgroundColor = .lightGray
        conversionPlusMinus.addTarget(self, action: #selector(write), for: .touchUpInside)
        conversionPlusMinus.setTitleColor(.black, for: .normal)
        view.addSubview(conversionPlusMinus)

        
        //percentSign
        let percentSign = UIButton(frame: CGRect(x: 165, y: 150, width: 70, height: 70))
        percentSign.setTitle("%", for: .normal)
        percentSign.layer.cornerRadius = 35
        percentSign.backgroundColor = .lightGray
        percentSign.addTarget(self, action: #selector(write), for: .touchUpInside)
        percentSign.setTitleColor(.black, for: .normal)
        view.addSubview(percentSign)

        
        //divide
        let divide = UIButton(frame: CGRect(x: 240, y: 150, width: 70, height: 70))
        divide.setTitle("÷", for: .normal)
        divide.layer.cornerRadius = 35
        divide.backgroundColor = .orange
        divide.addTarget(self, action: #selector(calculatorSign(sign:)), for: .touchUpInside)
        view.addSubview(divide)

        
        //num7
        let num7 = UIButton(frame: CGRect(x: 15, y: 230, width: 70, height: 70))
        num7.setTitle("7", for: .normal)
        num7.layer.cornerRadius = 35
        num7.backgroundColor = .darkGray
        num7.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num7)

        
        //num8
        let num8 = UIButton(frame: CGRect(x: 90, y: 230, width: 70, height: 70))
        num8.setTitle("8", for: .normal)
        num8.layer.cornerRadius = 35
        num8.backgroundColor = .darkGray
        num8.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num8)

        
        //num9
        let num9 = UIButton(frame: CGRect(x: 165, y: 230, width: 70, height: 70))
        num9.setTitle("9", for: .normal)
        num9.layer.cornerRadius = 35
        num9.backgroundColor = .darkGray
        num9.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num9)

        
        //multiply
        let multiply = UIButton(frame: CGRect(x: 240, y: 230, width: 70, height: 70))
        multiply.setTitle("×", for: .normal)
        multiply.layer.cornerRadius = 35
        multiply.backgroundColor = .orange
        multiply.addTarget(self, action: #selector(calculatorSign(sign:)), for: .touchUpInside)
        view.addSubview(multiply)

        //num4
        let num4 = UIButton(frame: CGRect(x: 15, y: 310, width: 70, height: 70))
        num4.setTitle("4", for: .normal)
        num4.layer.cornerRadius = 35
        num4.backgroundColor = .darkGray
        num4.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num4)

        //num5
        let num5 = UIButton(frame: CGRect(x: 90, y: 310, width: 70, height: 70))
        num5.setTitle("5", for: .normal)
        num5.layer.cornerRadius = 35
        num5.backgroundColor = .darkGray
        num5.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num5)

        //num6
        let num6 = UIButton(frame: CGRect(x: 165, y: 310, width: 70, height: 70))
        num6.setTitle("6", for: .normal)
        num6.layer.cornerRadius = 35
        num6.backgroundColor = .darkGray
        num6.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num6)

        //minus
        let minus = UIButton(frame: CGRect(x: 240, y: 310, width: 70, height: 70))
        minus.setTitle("-", for: .normal)
        minus.layer.cornerRadius = 35
        minus.backgroundColor = .orange
        minus.addTarget(self, action: #selector(calculatorSign(sign:)), for: .touchUpInside)
        view.addSubview(minus)

        //num1
        let num1 = UIButton(frame: CGRect(x: 15, y: 390, width: 70, height: 70))
        num1.setTitle("1", for: .normal)
        num1.layer.cornerRadius = 35
        num1.backgroundColor = .darkGray
        num1.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num1)

        //num2
        let num2 = UIButton(frame: CGRect(x: 90, y: 390, width: 70, height: 70))
        num2.setTitle("2", for: .normal)
        num2.layer.cornerRadius = 35
        num2.backgroundColor = .darkGray
        num2.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num2)

        //num3
        let num3 = UIButton(frame: CGRect(x: 165, y: 390, width: 70, height: 70))
        num3.setTitle("3", for: .normal)
        num3.layer.cornerRadius = 35
        num3.backgroundColor = .darkGray
        num3.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num3)

        //plus
        let plus = UIButton(frame: CGRect(x: 240, y: 390, width: 70, height: 70))
        plus.setTitle("+", for: .normal)
        plus.layer.cornerRadius = 35
        plus.backgroundColor = .orange
        plus.addTarget(self, action: #selector(calculatorSign(sign:)), for: .touchUpInside)
        view.addSubview(plus)

        
        //num0
        let num0 = UIButton(frame: CGRect(x: 15, y: 470, width: 145, height: 70))
        num0.setTitle("0", for: .normal)
        num0.layer.cornerRadius = 35
        num0.backgroundColor = .darkGray
        num0.addTarget(self, action: #selector(write), for: .touchUpInside)
        view.addSubview(num0)

        //re
        let re = UIButton(frame: CGRect(x: 165, y: 470, width: 70, height: 70))
        re.setTitle("reset", for: .normal)
        re.layer.cornerRadius = 35
        re.backgroundColor = .darkGray
        re.addTarget(self, action: #selector(reset), for: .touchUpInside)
        view.addSubview(re)

        //equal
        let equal = UIButton(frame: CGRect(x: 240, y: 470, width: 70, height: 70))
        equal.setTitle("=", for: .normal)
        equal.layer.cornerRadius = 35
        equal.backgroundColor = .orange
        equal.addTarget(self, action: #selector(write(number:)), for: .touchUpInside)
        view.addSubview(equal)

        // Do any additional setup after loading the view, typically from a nib.
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


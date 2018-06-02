//
//  ViewController.swift
//  Class0601
//
//  Created by kimdaeman14 on 2018. 6. 1..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    =========================버튼 선언, 크기, 위치 설정================================
    var label = UILabel(frame: CGRect(x: 15, y: 20 , width: 295, height: 120))
    var plus = UIButton(frame: CGRect(x: 15, y: 150, width: 70, height: 70))
    var minus = UIButton(frame: CGRect(x: 90, y: 150, width: 70, height: 70))
    var multiple = UIButton(frame: CGRect(x: 165, y: 150, width: 70, height: 70))
    var divide = UIButton(frame: CGRect(x: 240, y: 150, width: 70, height: 70))
    
    var num1 = UIButton(frame: CGRect(x: 15, y: 230, width: 70, height: 70))
    var num2 = UIButton(frame: CGRect(x: 90, y: 230, width: 70, height: 70))
    var num3 = UIButton(frame: CGRect(x: 165, y: 230, width: 70, height: 70))
    var num0 = UIButton(frame: CGRect(x: 240, y: 230, width: 70, height: 70))
    
    var num4 = UIButton(frame: CGRect(x: 15, y: 310, width: 70, height: 70))
    var num5 = UIButton(frame: CGRect(x: 90, y: 310, width: 70, height: 70))
    var num6 = UIButton(frame: CGRect(x: 165, y: 310, width: 70, height: 70))
    var num66 = UIButton(frame: CGRect(x: 240, y: 310, width: 70, height: 70))

    
    
    var num7 = UIButton(frame: CGRect(x: 15, y: 390, width: 70, height: 70))
    var num8 = UIButton(frame: CGRect(x: 90, y: 390, width: 70, height: 70))
    var num9 = UIButton(frame: CGRect(x: 165, y: 390, width: 70, height: 70))
    var num666 = UIButton(frame: CGRect(x: 240, y: 390, width: 70, height: 70))

    
    
    var button = UIButton(frame: CGRect(x: 15, y: 470, width: 145, height: 70))
    var resetButton = UIButton(frame: CGRect(x: 165, y: 470, width: 70, height: 70))
    var test = UIButton(frame: CGRect(x: 240, y: 470, width: 70, height: 70))
//    =========================버튼 선언, 크기, 위치 설정================================

    
    
    var arr: Array<Int> = []
    var total: String = ""
    var input : String = ""
    var firstnumber = 0
    var secondnumber = 0
    var resultnumber = 0
    var count = 1
    
    
    @objc func write(number : UIButton){
        label.text = number.currentTitle
        input = label.text!
        for _ in input {
            total += input
        }
        print("토탈값 : \(total)")
    }
    
    //이버튼을 누르면 문자열값 total이 map을 통해서 int로바뀌고 하나의 변수에 저장되도록하는 함수
    
    @objc func mapmap(){
    var arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
        firstnumber = arr[0]
        total = ""
    print(arr)
    print(count, "count")
    print("인트로변환된값 \(arr[0])")
   
    }
    
    //이버튼을 누르면 다시 시작된 토탈이 인트형으로 변환이되서 secondnumber에 들어가고
    //firstnumber   secondnumber가 연산을 하고
    //결과값이 다시firstnumber로 바껴야해 .
    @objc func mapmap2(){
        var arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
        secondnumber = arr[0]
        print(arr)
        print("두번째변환된값 \(arr[0])")
        count += 1
        print(count, "count")

        calcullater()
    }
    
    
    @objc func calcullater(){
       resultnumber = firstnumber + secondnumber
       label.text = "\(resultnumber)"
       print("결과값은 \(resultnumber)입니다.")
       firstnumber = resultnumber
       total = ""

    }
    
    @objc func reset(){
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
    
    
    override func viewDidLoad() { //뷰가 로드되면 행동하는 메소드
        super.viewDidLoad()
        
        
//    =========================버튼 이름, 모양 설정================================

        plus.setTitle("AC", for: .normal)
        plus.setTitleColor( .black, for: .normal)
        minus.setTitle("±", for: .normal)
        minus.setTitleColor( .black, for: .normal)
        multiple.setTitle("%", for: .normal)
        multiple.setTitleColor( .black, for: .normal)
        divide.setTitle("÷", for: .normal)
        divide.setTitleColor( .black, for: .normal)

        
        
        
        num1.setTitle("7", for: .normal)
        num2.setTitle("8", for: .normal)
        num3.setTitle("9", for: .normal)
        num0.setTitle("×", for: .normal)
        
        
        
        num4.setTitle("4", for: .normal)
        num5.setTitle("5", for: .normal)
        num6.setTitle("6", for: .normal)
        num66.setTitle("-", for: .normal)

        
        num7.setTitle("1", for: .normal)
        num8.setTitle("2", for: .normal)
        num9.setTitle("3", for: .normal)
        num666.setTitle("+", for: .normal)

        
        button.setTitle("0", for: .normal)
        resetButton.setTitle(".", for: .normal)
        test.setTitle("=", for: .normal)

        
        plus.layer.cornerRadius = 35
        minus.layer.cornerRadius = 35
        multiple.layer.cornerRadius = 35
        divide.layer.cornerRadius = 35
        num1.layer.cornerRadius = 35
        num2.layer.cornerRadius = 35
        num3.layer.cornerRadius = 35
        num4.layer.cornerRadius = 35
        num5.layer.cornerRadius = 35
        num6.layer.cornerRadius = 35
        num7.layer.cornerRadius = 35
        num8.layer.cornerRadius = 35
        num9.layer.cornerRadius = 35
        num0.layer.cornerRadius = 35
        
        num66.layer.cornerRadius = 35
        num666.layer.cornerRadius = 35


        button.layer.cornerRadius = 35
        resetButton.layer.cornerRadius = 35
        test.layer.cornerRadius = 35

        
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 80)
        label.textAlignment = NSTextAlignment.right
        
        
        
        
        label.textColor = .white
        view.backgroundColor = .black

        
        
        plus.backgroundColor = .lightGray
        minus.backgroundColor = .lightGray
        multiple.backgroundColor = .lightGray
        divide.backgroundColor = .orange
        
        
        num1.backgroundColor = .darkGray
        num2.backgroundColor = .darkGray
        num3.backgroundColor = .darkGray
        num4.backgroundColor = .darkGray
        num5.backgroundColor = .darkGray
        num6.backgroundColor = .darkGray
        num7.backgroundColor = .darkGray
        num8.backgroundColor = .darkGray
        num9.backgroundColor = .darkGray
        
        num0.backgroundColor = .orange
        num66.backgroundColor = .orange
        num666.backgroundColor = .orange
        test.backgroundColor = .orange
        
        
  


        button.backgroundColor = .darkGray
        resetButton.backgroundColor = .darkGray
        
        
        
        
        
        
        plus.addTarget(self, action: #selector(write), for: .touchUpInside)
        minus.addTarget(self, action: #selector(write), for: .touchUpInside)
        multiple.addTarget(self, action: #selector(write), for: .touchUpInside)
        divide.addTarget(self, action: #selector(write), for: .touchUpInside)
        
        
        num1.addTarget(self, action: #selector(write), for: .touchUpInside)
        num2.addTarget(self, action: #selector(write), for: .touchUpInside)
        num3.addTarget(self, action: #selector(mapmap), for: .touchUpInside)
        num0.addTarget(self, action: #selector(mapmap2), for: .touchUpInside)

        /*
        num4.addTarget(self, action: #selector(write4), for: .touchUpInside)
        num5.addTarget(self, action: #selector(write5), for: .touchUpInside)
        num6.addTarget(self, action: #selector(write6), for: .touchUpInside)
        num7.addTarget(self, action: #selector(write7), for: .touchUpInside)
        num8.addTarget(self, action: #selector(write8), for: .touchUpInside)
        num9.addTarget(self, action: #selector(write9), for: .touchUpInside)
 */
        


        resetButton.addTarget(self, action: #selector(reset), for: .touchUpInside)
        
        

        
        view.addSubview(label)
        
        view.addSubview(plus)
        view.addSubview(minus)
        view.addSubview(multiple)
        view.addSubview(divide)
        
        view.addSubview(num1)
        view.addSubview(num2)
        view.addSubview(num3)
        view.addSubview(num4)
        view.addSubview(num5)
        view.addSubview(num6)
        view.addSubview(num7)
        view.addSubview(num8)
        view.addSubview(num9)
        view.addSubview(num0)
        
        view.addSubview(button)
        view.addSubview(resetButton)
        view.addSubview(test)
        
        
        view.addSubview(num66)
        view.addSubview(num666)

        
       


        
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


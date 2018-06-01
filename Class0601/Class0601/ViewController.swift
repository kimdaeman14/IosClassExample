//
//  ViewController.swift
//  Class0601
//
//  Created by kimdaeman14 on 2018. 6. 1..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label = UILabel(frame: CGRect(x: 15, y: 50 , width: 295, height: 90))
  
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
    
    var num7 = UIButton(frame: CGRect(x: 15, y: 390, width: 70, height: 70))
    var num8 = UIButton(frame: CGRect(x: 90, y: 390, width: 70, height: 70))
    var num9 = UIButton(frame: CGRect(x: 165, y: 390, width: 70, height: 70))
    
    var button = UIButton(frame: CGRect(x: 15, y: 470, width: 70, height: 70))
    var countButton = UIButton(frame: CGRect(x: 90, y: 470, width: 70, height: 70))
    var resetButton = UIButton(frame: CGRect(x: 165, y: 470, width: 70, height: 70))
    var test = UIButton(frame: CGRect(x: 240, y: 470, width: 70, height: 70))
    
    
    var arr: Array<Int> = []
    var total: String = ""
    var input : String = ""
    var firstnumber = 0
    var secondnumber = 0
    var resultnumber = 0
    
    
    
    @objc func write(number : UIButton){
        label.text = number.currentTitle
      
        input = label.text!
        
        for _ in input {
            total += input
        }
        printarr()
    }
    
    //이버튼을 누르면 문자열값 total이 map을 통해서 int로바뀌고 하나의 변수에 저장되도록하는 함수
    
    @objc func mapmap(){
    
    var arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
    
        
        firstnumber = arr[0]
        
    total = ""
    print("인트로변환된값 \(arr[0])")
        
    
    }
    
    //이버튼을 누르면 다시 시작된 토탈이 인트형으로 변환이되서 secondnumber에 들어가고
    //firstnumber   secondnumber가 연산을 하고
    //결과값이 다시firstnumber로 바껴야해 .
    @objc func mapmap2(){
        
        var arr = total.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
        
        
        secondnumber = arr[0]
        
        print("두번째변환된값 \(arr[0])")

        
        calcullater()
    }
    
    
    @objc func calcullater(){
       resultnumber = firstnumber + secondnumber
       label.text = "결과값은 \(resultnumber)입니다."
        firstnumber = resultnumber
        
    }
    
    /*
    @objc func write1(){ label.text = "\(1)"; arr.append(1); printarr()}
    @objc func write2(){ label.text = "\(2)"; arr.append(2); printarr()}
    @objc func write3(){ label.text = "\(3)"; arr.append(3); printarr()}
    @objc func write4(){ label.text = "\(4)"; arr.append(4); printarr()}
    @objc func write5(){ label.text = "\(5)"; arr.append(5); printarr()}
    @objc func write6(){ label.text = "\(6)"; arr.append(6); printarr()}
    @objc func write7(){ label.text = "\(7)"; arr.append(7); printarr()}
    @objc func write8(){ label.text = "\(8)"; arr.append(8); printarr()}
    @objc func write9(){ label.text = "\(9)"; arr.append(9); printarr()}
    @objc func write0(){ label.text = "\(0)"; arr.append(0); printarr()}
    */
  
    
    
    @objc func printarr(){
        print("토탈값: \(total)")

    }
    
    
    
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        plus.setTitle("+", for: .normal)
        minus.setTitle("-", for: .normal)
        multiple.setTitle("*", for: .normal)
        divide.setTitle("/", for: .normal)
        
        num1.setTitle("1", for: .normal)
        num2.setTitle("2", for: .normal)
        num3.setTitle("+", for: .normal)
        num4.setTitle("4", for: .normal)
        num5.setTitle("5", for: .normal)
        num6.setTitle("6", for: .normal)
        num7.setTitle("7", for: .normal)
        num8.setTitle("8", for: .normal)
        num9.setTitle("9", for: .normal)
        num0.setTitle("=", for: .normal)

    
        button.setTitle("click", for: .normal)
        countButton.setTitle("count", for: .normal)
        resetButton.setTitle("reset", for: .normal)
        test.setTitle("test", for: .normal)

        plus.layer.cornerRadius = 25
        minus.layer.cornerRadius = 25
        multiple.layer.cornerRadius = 25
        divide.layer.cornerRadius = 25
        num1.layer.cornerRadius = 25
        num2.layer.cornerRadius = 25
        num3.layer.cornerRadius = 25
        num4.layer.cornerRadius = 25
        num5.layer.cornerRadius = 25
        num6.layer.cornerRadius = 25
        num7.layer.cornerRadius = 25
        num8.layer.cornerRadius = 25
        num9.layer.cornerRadius = 25
        num0.layer.cornerRadius = 25
        button.layer.cornerRadius = 25
        countButton.layer.cornerRadius = 25
        resetButton.layer.cornerRadius = 25
        test.layer.cornerRadius = 25

        
        
        
        view.backgroundColor = .black
        label.backgroundColor = .gray
 
        plus.backgroundColor = .orange
        minus.backgroundColor = .orange
        multiple.backgroundColor = .orange
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
        num0.backgroundColor = .darkGray

        button.backgroundColor = .gray
        countButton.backgroundColor = .gray
        resetButton.backgroundColor = .gray
        test.backgroundColor = .gray
        
        
        
        
        
        
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
        
        
        button.addTarget(self, action: #selector(write), for: .touchUpInside)
        countButton.addTarget(self, action: #selector(write), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(write), for: .touchUpInside)
        test.addTarget(self, action: #selector(write), for: .touchUpInside)


        button.addTarget(self, action: #selector(write), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(write), for: .touchUpInside)
        test.addTarget(self, action: #selector(write), for: .touchUpInside)
        

        
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
        view.addSubview(countButton)
        view.addSubview(resetButton)
        view.addSubview(test)
        
       


        
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


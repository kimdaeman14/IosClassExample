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
    
    
    

    var total: String = ""
    var count = 0
    
    @objc func write(_ button: UIButton){
        label.text = "\(button.currentTitle!)"
        let input = label.text
        for _ in input! {
            total += input!
        }
        showCount()
    }
    
    @objc func showCount(){
        print("show total \(total)")
    }
    
    
    @objc func countAdd(){
        button.setTitle("clicked", for: .highlighted)
        count += 1
        countButton.setTitle("\(count)", for: .normal)
    }
    
    @objc func reset(){
        button.setTitle("click", for: .normal)
        button.backgroundColor = .black
        count = 0
        countButton.setTitle("0", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        plus.setTitle("+", for: .normal)
        minus.setTitle("-", for: .normal)
        multiple.setTitle("*", for: .normal)
        divide.setTitle("/", for: .normal)
        
        num1.setTitle("1", for: .normal)
        num2.setTitle("2", for: .normal)
        num3.setTitle("3", for: .normal)
        num4.setTitle("4", for: .normal)
        num5.setTitle("5", for: .normal)
        num6.setTitle("6", for: .normal)
        num7.setTitle("7", for: .normal)
        num8.setTitle("8", for: .normal)
        num9.setTitle("9", for: .normal)
        num0.setTitle("0", for: .normal)

    
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
        
        
        
        
        
        
        plus.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        minus.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        multiple.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        divide.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num1.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num2.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num3.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num4.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num5.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num6.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num7.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num8.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num9.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        num0.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        button.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        countButton.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        test.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)


        button.addTarget(self, action: #selector(countAdd), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(reset), for: .touchUpInside)
        test.addTarget(self, action: #selector(write(_:)), for: .touchUpInside)
        

        
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


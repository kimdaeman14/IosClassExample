//
//  ViewController.swift
//  Class0607(4)
//
//  Created by kimdaeman14 on 2018. 6. 7..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class Singleton {
    static let shared = Singleton()
    private init() {}
    let id = "fastcampus"
    let password = "123456"
}
let singleton = Singleton.shared

class ViewController: UIViewController {

let loginButton = UIButton(frame: CGRect(x: 35, y: 480, width: 255, height: 35))
let idTextField = UITextField(frame: CGRect(x: 30, y: 200, width: 210, height: 40))
let passwordTextField = UITextField(frame: CGRect(x: 30, y: 300, width: 210, height: 40))

override func viewDidLoad() {
    super.viewDidLoad()
    
    
    //loginbutton
    loginButton.setTitle("Login", for: .normal)
    loginButton.setTitleColor(.white, for: .normal)
    loginButton.backgroundColor = .black
    loginButton.layer.cornerRadius = 5
    loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
    view.addSubview(loginButton)
    loginButton.addTarget(self, action: #selector(showSecondViewController(_:)), for: .touchUpInside)
    

    //idTextField
    view.addSubview(idTextField)
    idTextField.backgroundColor = .gray
    idTextField.text = "아이디를 입력하세요."
    idTextField.textColor = .white

    //passwordTextField
    view.addSubview(passwordTextField)
    passwordTextField.backgroundColor = .gray
    passwordTextField.text = "비밀번호를 입력하세요."
    passwordTextField.textColor = .white
    }

    @objc func showSecondViewController(_ :UIButton){
        print("aaa")
        if (singleton.id == idTextField.text && singleton.password == passwordTextField.text){
            var second = SecondViewController()
            second.a = idTextField.text ?? ""
            present(second, animated: true)
            
        }else {
            print("bbbb")
            
            let alertController = UIAlertController(title: "아이디 또는 비밀번호가 맞지 않습니다.", message: "다시 시도해 주세요.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default)
            alertController.addAction(okAction)
            present(alertController, animated: true)
            }
            
        }


    
    
    
    
}


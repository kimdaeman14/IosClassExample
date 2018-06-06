//
//  ViewController.swift
//  Class0605(3)
//
//  Created by kimdaeman14 on 2018. 6. 6..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textFieldOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counfigureTextField()
        configureTapGusture()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //로그인버튼을 동작하는 메소드
    @IBAction func loginTaped(_ sender: Any) {
        view.endEditing(true)
    }
    
    private func configureTapGusture(){
        let tapGusture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handletap))
        view.addGestureRecognizer(tapGusture)
    }
    
    //텍스트필드나 로그인버튼 외에 다른 공간을 클릭하면 동작하는 메소드
    @objc func handletap(){
        view.endEditing(true)
    }
    private func counfigureTextField(){
        textFieldOne.delegate = self
        textFieldTwo.delegate = self
    }
    
    
}

    //리턴버튼을 누르면 동작하는 메소드
extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        return true
    }
}

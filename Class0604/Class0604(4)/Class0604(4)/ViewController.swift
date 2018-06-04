//
//  ViewController.swift
//  Class0604(4)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction private func toSecondViewController(_: UIButton){
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let toSecond = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        present(toSecond, animated: true)
    }
   
    
    



}


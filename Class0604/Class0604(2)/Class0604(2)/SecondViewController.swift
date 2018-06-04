//
//  SecondViewController.swift
//  Class0604(2)
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction private func toThirdViewController(_ second : UIButton){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let thrid = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        present(thrid, animated: true)
    }
    
    @IBAction private func returnToFirstViewController( _: UIButton){
        dismiss(animated: true)
    }
    
    deinit {
        print("SecondViewController end")
    }
    
}

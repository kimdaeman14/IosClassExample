//
//  SecondViewController.swift
//  Class0604(4)
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


    @IBAction private func toThirdViewController(_: UIButton){
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tothird = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        present(tothird, animated: true)
    }
    
    deinit{
        print("second die")
    }

}

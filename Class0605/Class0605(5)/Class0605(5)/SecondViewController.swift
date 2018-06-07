//
//  SecondViewController.swift
//  Class0605(5)
//
//  Created by kimdaeman14 on 2018. 6. 7..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var newlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func returnToViewController(){
        presentingViewController?.dismiss(animated: true)
    }


}

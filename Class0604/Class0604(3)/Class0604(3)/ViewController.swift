//
//  ViewController.swift
//  Class0604(3)
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
        //이거도 _: UIButton 앞에 필요없네?
    }
    //요녀석의 특이한 점은
    //3번쨰에서 1번쨰로 한방에 가려면, 스토리보드에서 이녀석을 선택해주면 된다.
    //특이점이 3->1 가는게아니라 3->2->1로 가서 프린트찍힌걸보면 두번째꺼도 닫혀있는걸 볼 수 있다.
    @IBAction func unwindToFirst(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source
    }

}


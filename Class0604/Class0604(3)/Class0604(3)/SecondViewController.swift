//
//  SecondViewController.swift
//  Class0604(3)
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
        let toThird = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        present(toThird, animated: true)
    }
    
    
    
    //얘같은 경우는 dismiss랑 비슷한앤데, unwind하면 자동완성된다.
    //특이한 점은 exit 빨간색 동그라미를 활용한다는 점이고, 세번째 걸 닫으려고 하는데
    //세번째에다가 해당 메소드를 넣고 exit에 연결하면 작동되지 않는다.
    //그래서 지금처럼 두번째에다 넣고 작동하면 잘실행되는데, 그러면 세번째가 닫힌지 어떻게아냐?
    //를 확인하기 위해서 세번째에다가 deinit를 선언하고 프린트해보니 잘닫혔다. 신기한녀석이다.
    @IBAction func unwindToSecond(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source
    }

    deinit {
        print("Second Die")
    }
}

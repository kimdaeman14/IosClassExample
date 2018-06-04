//
//  ViewController.swift
//  Class0604
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("a viewDidLoad")
    }

    
    //버튼을 누르면 다음 뷰컨트롤러로 이동시키는 역할을 하는 메소드
    @IBAction private func showNextViewController(_ sender: Any){
        //스토리보드중에 이름이 Main인 애를 선언해준다.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //secondViewController이라는 변수에 스토리보드. 아이디가 "SecondViewController"인 녀석을 객체(인스턴스)화 해서 넣어주겠다.
        //instantiate 뜻을 찾아보니깐 '인스턴스화하다.' 라는 뜻이다.
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        //여기서 present는 뜻그대로 프레젠테이션, 보여주겠다는 거고 뭐를? 변수에 넣은 secondViewController 얘를. 값은 트루다? 뭐 그런뜻인듯
        present(secondViewController, animated: true)
    }
    
    
    @IBAction func unwindToFisrtViewController(_ sender: UIStoryboardSegue) {
        let sourceViewController = sender.source
        // Use data from the view controller which initiated the unwind segue
        print(sender.destination) //목적지
        print(sender.source) //출발지
    }
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("-----third viewDidAppear-----------")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("-----third viewWillAppear-----------")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("-----third viewWillDisappear-----------")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("-----third viewDidDisappear-----------")
    }
    
  

}

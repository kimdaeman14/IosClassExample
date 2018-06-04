//
//  SecondViewController.swift
//  Class0604
//
//  Created by kimdaeman14 on 2018. 6. 4..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //첫번째꺼하고 같은 역할, 매개변수가 버튼이잖아? 버튼누르면 하겠다는 거지.
    @IBAction private func showThirdViewController(_ button: UIButton){
        let thridstoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let thridViewController = thridstoryboard.instantiateViewController(withIdentifier: "ThirdViewController")
        present(thridViewController, animated: true)
    }
    
    
    
    @IBAction private func dismissViewController(_ sender: Any){
        dismiss(animated: true) {
            print("dismissed third view controller")
        }
    }
    
    /*
     이렇게도 할수있다. 해석하자면 presentingViewController가 있냐? 있으면 닫아없애라라는 뜻
     @IBAction private func seondDimissViewController(_ sender: Any){
     presentingViewController?.dismiss(animated: true, completion: {
     print("second dismiss")
     })
     }
     */
    
    
    //잘없애졌는지 확인할 땐 이녀석을 쓴다. 우리가 클래스 생성할때 init를 쓰잖아? 그런것처럼 없앨때는 deinit을 호출한다고 함. 
    deinit {
        print("send deinit")
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

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

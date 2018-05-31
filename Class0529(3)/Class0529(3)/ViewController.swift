//
//  ViewController.swift
//  Class0529(3)
//
//  Created by kimdaeman14 on 2018. 5. 29..
//  Copyright © 2018년 kimdaeman14. All rights reserved.
//

import UIKit

//frame 상위 view 기준
//bounds 자기 자신 기준
let button1 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
var lable = UILabel(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
var count = 0 {
    didSet{
        lable.text = "\(count)"
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button1.setImage(UIImage(named: "push.jpeg"), for: .normal)
        button1.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
        lable.text = "\(count)"
        lable.backgroundColor = .white
        lable.font = UIFont.boldSystemFont(ofSize: 50)
        view.addSubview(lable)
        view.addSubview(button1)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func showAlert(_ button: UIButton){
        let alertController = UIAlertController(title: "카운트를 올릴겁니까?", message: "정말로?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) { _ in
            count += 1}
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { _ in
            lable.text = "finish"}
        let destructiveAction = UIAlertAction(title: "destructive", style: .destructive) { _ in count = 0}
        let actions: Array = [okAction, cancelAction, destructiveAction]
        for action in actions {
            alertController.addAction(action)}
        present(alertController, animated: true)
    }

}


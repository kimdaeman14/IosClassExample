

//0604 userDefaults 방법을 이용해서 재구성하기

import UIKit

class ViewController: UIViewController {
    
    var label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var button = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        view.addSubview(label)
        label.textAlignment = NSTextAlignment.center
        label.text = "0"
        view.addSubview(button)
        button.backgroundColor = .black
        button.setTitle("click", for: .normal)
        button.addTarget(self, action: #selector(toSecondViewController), for: .touchUpInside)
    }
    

    @objc func toSecondViewController(){
        let SecondView = SecondViewController()
        present(SecondView, animated: true)
        print("will SecondViewController")
        SecondView.changeButton.setTitle("add count!!", for: .normal)
        SecondView.view.backgroundColor = UIColor.lightGray
    }
    
    
}


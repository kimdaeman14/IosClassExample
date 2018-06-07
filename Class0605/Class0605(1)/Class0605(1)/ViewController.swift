

import UIKit


//요구사항
//0604일에 만들었던 버튼을 누르면 세컨드뷰컨트롤러에서 카운트값이 올라갔던 과제를 싱글톤을 이용하여 다시 만들어보기

final class Count{
    static let shared = Count()
    var count = 0
}

class ViewController: UIViewController {

    var label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    var button = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        view.addSubview(label)
        label.textAlignment = NSTextAlignment.center
        label.text = "\(Count.shared.count)"
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


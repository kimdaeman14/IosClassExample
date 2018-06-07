

/*
 금일 과제 내용 (이미지 참고)
 - UITextField 를 이용해 작성하는 텍스트가 Label에 표시되도록 구현.  (UITextFieldDelegate 프로토콜 또는 Editing Changed 이벤트 등을 이용)
 - 키보드가 올라와 있을 경우는 Label 의 텍스트 색깔이 파란색, 키보드가 내려가 있을 경우는 빨간색으로 나타나도록...
 - 버튼을 누르면 현재 Label 의 텍스트를 다음 뷰 컨트롤러의 Label 에 전달.  (뷰컨트롤러 속성에 직접 값 설정, Singleton, UserDefaults) 등을 이용한 방법을 모두 활용
 */

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Mylabel: UILabel!
    @IBOutlet weak var textFieldOne: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(self,"kjhgkhkj")
        textFieldOne.delegate = self //매우 중요
        
    }
   
    


    @available(iOS 2.0, *)
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("return")
        self.Mylabel.text = self.textFieldOne.text
        self.Mylabel.textColor = .blue
        return true
    }

    @available(iOS 2.0, *)
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        print("aaa")
        self.textFieldOne.textColor = .red
        return true
    }
    
    @IBAction private func showNextViewController(_ sender: Any){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        present(secondViewController, animated: true)
        
        let View = (presentedViewController as! SecondViewController)
        View.newlabel.text = self.Mylabel.text
    }
    
    
    
}




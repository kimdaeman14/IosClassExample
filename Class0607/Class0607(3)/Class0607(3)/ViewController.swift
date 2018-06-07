
import UIKit

class Singleton {
    static let shared = Singleton()
    private init() {}
    let id = "fastcampus"
    let password = "123456"
}

let singleton = Singleton.shared


class ViewController: UIViewController {

    let logo = UIButton(frame: CGRect(x: 35, y: 70, width: 250, height: 55))
    var baseView = UIView(frame: CGRect(x: 35, y: 250, width: 255, height: 170))
    let loginButton = UIButton(frame: CGRect(x: 35, y: 480, width: 255, height: 35))
    let idButton = UIButton(frame: CGRect(x: 0, y: 30, width: 20, height: 20))
    let passwordButton = UIButton(frame: CGRect(x: 0, y: 120, width: 20, height: 20))
    let idTextField = UITextField(frame: CGRect(x: 30, y: 30, width: 210, height: 20))
    let passwordTextField = UITextField(frame: CGRect(x: 30, y: 120, width: 210, height: 20))
    let createIdLabel = UILabel(frame: CGRect(x: 35, y: 520, width: 255, height: 35))
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //logo
        logo.setImage(UIImage(named: "FastCampus_Logo-2"), for: .normal)
        view.addSubview(logo)
        
        //baseView
        baseView.backgroundColor = .white
        view.addSubview(baseView)
        
        //loginbutton
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .black
        loginButton.layer.cornerRadius = 5
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(showSecondViewController(_:)), for: .touchUpInside)

        //idButton
        baseView.addSubview(idButton)
        idButton.setImage(UIImage(named: "userIcon@2x"), for: .normal)

        //passwordButton
        baseView.addSubview(passwordButton)
        passwordButton.setImage(UIImage(named: "passwordIcon@2x"), for: .normal)

        //idTextField
        baseView.addSubview(idTextField)
        idTextField.backgroundColor = .white
        idTextField.text = "아이디를 입력하세요."
        idTextField.textColor = .gray
        
        //passwordTextField
        baseView.addSubview(passwordTextField)
        passwordTextField.backgroundColor = .white
        passwordTextField.text = "비밀번호를 입력하세요."
        passwordTextField.textColor = .gray
        
        //createIdLabel
        view.addSubview(createIdLabel)
        createIdLabel.text = "Not yet registered? Create ID"
        createIdLabel.textColor = .red
        createIdLabel.font = UIFont.systemFont(ofSize: 10)
        createIdLabel.textAlignment = NSTextAlignment.center
    }

    @objc func showSecondViewController(_ :UIButton){
        if (singleton.id == idTextField.text && singleton.password == passwordTextField.text){
            print(idTextField.text)
            print(passwordTextField.text)
            
            let secondViewController = SecondViewController()
            secondViewController.idLabel.text = idTextField.text ?? ""
            secondViewController.passwordLabel.text = passwordTextField.text ?? ""
            present(secondViewController, animated: true)
            
        }else {
            let alertController = UIAlertController(title: "아이디 또는 비밀번호가 맞지 않습니다.", message: "다시 시도해 주세요.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default)
            alertController.addAction(okAction)
            present(alertController, animated: true)
        }
        
    }
 


}


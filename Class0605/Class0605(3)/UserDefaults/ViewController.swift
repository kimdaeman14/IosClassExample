//강사님 수업 자료본 추가.
//새로운 ui 적용. datepicker, alertSwitch 

import UIKit

final class ViewController: UIViewController {
  
    //문자열을사용할때 오타가나기때문에 이런식으로 스트럭트를 만들어줘서 사용함.
    //이런 사소한 오타때문에 몇십시간 몇백시간을 날릴수있다.
    
    //2번. 문자열로 사용하면 문자열을바꿀때 일일히다바까줘야되지만, 이거는 하나만바까줘도댐.
  struct Key {
    static let today = "kTODAY"
    static let alertOn = "kAlertOn"
  }

    
    //객체에대한 속성을(값들, 온오프값) 변경해야할때 아울렛
  @IBOutlet private weak var datePicker: UIDatePicker!
  @IBOutlet private weak var alertSwitch: UISwitch!
  
    //데이터저장
  @IBAction func saveData(_ button: UIButton) {
    let userDefaults = UserDefaults.standard
    //date타입은 any타입으로-
    userDefaults.set(datePicker.date, forKey: Key.today)
    userDefaults.set(alertSwitch.isOn, forKey: Key.alertOn)
}
  

    
    //데이터불러오는
  @IBAction func loadData(_ button: UIButton) {
    let userDefaults = UserDefaults.standard
    //오브젝트가 애니타입이라 가드문씀. as?해서 데이트로 타입캐스팅.
    guard let today = userDefaults.object(forKey: Key.today) as? Date else { return }
    
//    datePicker.setDate(today, animated: true)
    datePicker.date = today
    alertSwitch.setOn(userDefaults.bool(forKey: Key.alertOn), animated: true)

  }
}



import UIKit

class BasicConcept: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


/*:
 # UserDefaults
 - iOS 에서 데이터를 파일에 저장하기 위해 사용하는 대표적인 클래스 중 하나
 - 간단한 정보를 저장하고 불러올 때 사용하며 내부적으로 pList 파일로 저장
 */


/*
 ## 데이터 저장방식 비교 Ram vs File

Ram :
- 메모리에 저장하는 방식
- App이 종료되면 그 데이터를 사용하지못함. 휘발성

File :
- 파일에 저장하는 방식
- 파일에 date가 저장되어 있으면 남아있다가 다시 그 정보를 불러와서 사용 할 수 있을것
- 속도는 더 느림. 메모리에 갔다가 하드웨어에 갔다가 다시 정보를 불러와서 메모리에 데이터를 담아야하니까.
*/

/*:
 ## How to Use
 */

func saveDate(){
    let userDefaults = UserDefaults.standard
    userDefaults.set(10, forKey: "ten")
    userDefaults.set(true, forKey: "true")
    userDefaults.set(3.14, forKey: "pie")
}

func loadDate(){
    let userDefaults = UserDefaults.standard
    userDefaults.object(forKey: "ten")
    userDefaults.object(forKey: "true")
    userDefaults.object(forKey: "pie")

}

//etc

struct Key {
    static let today = "kTODAY"
    static let alertOn = "kAlertOn"
}

//문자열을사용할때 오타가나기때문에 이런식으로 스트럭트를 만들어줘서 사용함.
//이런 사소한 오타때문에 몇십시간 몇백시간을 날릴수있다.
//문자열로 사용하면 문자열을바꿀때 일일히다바까줘야되지만, 이거는 하나만바까줘도댐.

    
    




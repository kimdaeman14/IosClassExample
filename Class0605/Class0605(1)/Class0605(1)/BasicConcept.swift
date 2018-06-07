
import UIKit

class BasicConcept: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

/*:
 # Singleton
 - 특정 클래스의 인스턴스에 접근할 때 항상 동일한 인스턴스만을 반환하도록 하는 설계 패턴
 - 한 번 생성된 이후에는 프로그램이 종료될 때까지 항상 메모리에 상주
 - 어플리케이션에서 유일하게 하나만 필요한 객체에 사용
 */

/*
 ##Singleton
 - 장점
 불러오는 객체가 어떤 값이라는 확신이 있음.
 싱글톤.?? 누르면 객체가 뜨기 때문에 실수할 일이 없음.
 코드가 더 간결해짐.
 
 - 단점
 아무데서나 갖다 쓸 수 있으니까 막쓰다가 데이터가 꼬여버릴 수 있음.
 객체를 입맛에 맞게 변경할 수 없음.
 단순 코드만 보고는 알 수 있는 정보가 많지 않음.
 */


/*:How to Use*/
class PrivateSingleton {
    static let shared = PrivateSingleton()
    private init() {}
    var x = 1
}
//외부에서 인스턴스를 직접 생성하지 못하도록 생성자를 private 으로 선언
//let으로 선언한 것은 기본적으로 thread-safe 하므로 별도로 dispatch_once_t 불필요
//static 전역 변수로 선언한 것은 lazy 하게 동작하므로 처음 Singleton을 생성하기 전까지 메모리에 올라가지 않음


//PrivateSingleton.shared 라는 자신의 객체를 생성해주고 . 으로 접근
let singleton = PrivateSingleton.shared.x



import RxCocoa
import RxSwift
import SnapKit
import UIKit
import WithoutPods


public struct WithPods {
    var text = "Hello, World!"
    let test = WithoutPods()
    
    public init() {
        
    }
    
    public func showView() -> UIView {
        test.passView()
    }
}

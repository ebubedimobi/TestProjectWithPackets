import UIKit

public struct WithoutPods {
    var text = "Hello, World!"
    
    let view = UIView(frame: .init(x: 0, y: 0, width: 300, height: 200))
    
    public init() {
        
    }
    
    public func passView() -> UIView {
        view.backgroundColor = .red
        return view
    }
}

import UIKit
import PlaygroundSupport

let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
let subview = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
subview.center = view.center
subview.backgroundColor = .green
//subview.autoresizingMask = [.flexibleRightMargin]
view.addSubview(subview)

view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
PlaygroundPage.current.liveView = view

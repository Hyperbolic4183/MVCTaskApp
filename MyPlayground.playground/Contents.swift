import UIKit
import SpriteKit
import PlaygroundSupport

class ViewController: UIViewController {
    var label = UILabel()
    let node = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))

    override func viewDidLoad() {
//          label = UILabel(frame: CGRect(x: 10, y: 40, width: 400, height: 40))
//          label.font = UIFont.systemFont(ofSize: 25)
//          label.textColor = .blue
//          label.text = "TEST"
//          view.addSubview(label)
        view.backgroundColor = .yellow
        let customView = Triangle()
        customView.backgroundColor = .white
        view = customView
    }
}

class Line: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.close()
        UIColor.red.setStroke()
        path.stroke()
        
    }
}

class Triangle: UIView {
    override func draw(_ rect: CGRect) {
        let triangle = UIBezierPath()
        triangle.move(to: CGPoint(x: 100, y: 100))
        triangle.addLine(to:CGPoint(x: 300, y: 150))
        triangle.addLine(to:CGPoint(x: 200, y: 300))
        triangle.addLine(to:CGPoint(x: 100, y: 100))
        triangle.close()
        // 内側の色
        UIColor(red: 1, green: 0, blue: 0, alpha: 0.3).setFill()
        // 内側を塗りつぶす
        triangle.fill()
        // 線の色
        UIColor(red: 1, green: 0, blue: 0, alpha: 1.0).setStroke()
        // 線の太さ
        triangle.lineWidth = 2.0
        // 線を塗りつぶす
        triangle.stroke()
        
    }
}


let vc = ViewController()
PlaygroundPage.current.liveView = vc

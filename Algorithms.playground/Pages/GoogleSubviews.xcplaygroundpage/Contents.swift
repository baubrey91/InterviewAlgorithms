//: [Previous](@previous)

import Foundation
import UIKit

let view1 = UIView()
let view2 = UIView()
let view3 = UIView()
let view4 = UIView()
let view5 = UIView()
let view6 = UIView()
let view7 = UIView()

view1.addSubview(view2)
view1.addSubview(view3)
view2.addSubview(view4)
view4.addSubview(view5)
view4.addSubview(view6)
view4.addSubview(view7)

var tab = "     "
func printSubview(mainView: UIView, indent: Int) {
    var indentation = ""

    for i in 0..<indent {
        indentation = indentation + tab
    }
    print("\(indentation) + \(mainView)")
    for v in mainView.subviews {
        if v.subviews != nil {
            printSubview(mainView: v, indent: indent + 1)
        }
    }
}

printSubview(mainView: view1, indent: 0)
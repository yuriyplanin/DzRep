//
//  ViewController.swift
//  DZ8-2_Squares
//
//  Created by Yuriy Planin on 13.08.22.
//

import UIKit

var squareSize = 100
let button = UIButton(frame: CGRect(origin: .init(x: 100, y: 600), size: .init(width: 50, height: 50)))
var colorLabel = square.backgroundColor

let screenSize = UIScreen.main.bounds
let screenWidth = Int(screenSize.width)
let screenHeight = Int(screenSize.height)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.backgroundColor = .brown
        button.center = CGPoint(x: 200, y: 800)
        self.view.addSubview(button)
        
        let action = UIAction(handler: buttonTapped)
        button.addAction(action, for: .touchUpInside)
        
    }

    func buttonTapped(_ sender: UIAction) {
        var x = 0
        var y = 0

        while x < screenWidth || y + squareSize <= screenHeight {
            if x >= screenWidth {
                y += squareSize
                x = 0
            }
            var square = UIView(frame: CGRect(x: x, y: y, width: squareSize, height: squareSize))
            square.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
            func resolvedColor(with traitCollection: UITraitCollection) -> UIColor {
               String()
            }
            var label = UILabel(frame: CGRect(x: x, y: y, width: squareSize, height: squareSize))
            label.text = String?(colorLabel)
            view.addSubview(square)
            square.addSubview(label)
            label.center = square.center
            x += squareSize
        }
        print("Complete")
    }
}


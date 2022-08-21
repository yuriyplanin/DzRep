//
//  ViewController.swift
//  DZ7-2_Planin
//
//  Created by Yuriy Planin on 7.08.22.
//

import UIKit

var squareSize = 500
let button = UIButton(frame: CGRect(origin: .init(x: 100, y: 600), size: .init(width: 50, height: 50)))

//var frames = [firstView.frame, secondView.frame, thirdView.frame, fourthView.frame]

let screenSize = UIScreen.main.bounds
let screenWidth = Int(screenSize.width)
let screenHeight = Int(screenSize.height)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button.backgroundColor = .purple
        button.center = CGPoint(x: 200, y: 800)
        view.addSubview(button)
        
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
            view.addSubview(square)
            x += squareSize
        }
        print("Complete")
    }

}


//
//  ViewController.swift
//  DZ-7 Planin
//
//  Created by Yuriy Planin on 22.07.22.
//

import UIKit

//let firstView = UIView(frame: CGRect(x: 50, y: 250, width: 100, height: 100))
//let secondView = UIView(frame: CGRect(x: 50, y: 100, width: 100, height: 100))
//let thirdView = UIView(frame: CGRect(x: 200, y: 100, width: 100, height: 100))
//let fourthView = UIView(frame: CGRect(x: 200, y: 250, width: 100, height: 100))
let button = UIButton(frame: CGRect(origin: .init(x: 100, y: 600), size: .init(width: 50, height: 50)))

let circle = UIView(frame: CGRect(origin: .init(x: 140, y: 450), size: CGSize(width: 50, height: 50)))
let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        circle.backgroundColor = .red
        circle.layer.cornerRadius = circle.frame.height / 2
        circle.layer.masksToBounds = false
                view.addSubview(circle)

        
        button.backgroundColor = .purple
        button.center = CGPoint(x: 200, y: 800)
        self.view.addSubview(button)
        
        let action = UIAction(handler: buttonTapped)
        button.addAction(action, for: .touchUpInside)

}
    // todo use radius
    func buttonTapped(_ sender: UIAction) {
        circle.frame.origin.x = CGFloat(Int.random(in: 0..<Int(screenWidth - 40)))
        circle.frame.origin.y = CGFloat(Int.random(in: 0..<Int(screenHeight - 40)))
                                        }


    
    }





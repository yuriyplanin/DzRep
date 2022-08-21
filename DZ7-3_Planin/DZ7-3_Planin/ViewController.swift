//
//  ViewController.swift
//  DZ7-3_Planin
//
//  Created by Yuriy Planin on 7.08.22.
//

import UIKit

let buttonUp = UIButton(frame: CGRect(origin: .init(x: 200, y: 790), size: .init(width: 50, height: 50)))
let buttonDown = UIButton(frame: CGRect(origin: .init(x: 200, y: 850), size: .init(width: 50, height: 50)))
let buttonLeft = UIButton(frame: CGRect(origin: .init(x: 140, y: 850), size: .init(width: 50, height: 50)))
let buttonRight = UIButton(frame: CGRect(origin: .init(x: 260, y: 850), size: .init(width: 50, height: 50)))

let circle = UIView(frame: CGRect(origin: .init(x: 140, y: 450), size: CGSize(width: 100, height: 100)))

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle.backgroundColor = .red
        circle.layer.cornerRadius = circle.frame.height / 2
        circle.layer.masksToBounds = true
        view.addSubview(circle)
    
        
        buttonUp.backgroundColor = .purple
        buttonUp.setTitle("Up", for: .normal)
        view.addSubview(buttonUp)
        buttonDown.backgroundColor = .purple
        buttonDown.setTitle("Down", for: .normal)
        view.addSubview(buttonDown)
        buttonLeft.backgroundColor = .purple
        buttonLeft.setTitle("Left", for: .normal)
        view.addSubview(buttonLeft)
        buttonRight.backgroundColor = .purple
        buttonRight.setTitle("Right", for: .normal)
        view.addSubview(buttonRight)
        
        var action = UIAction(handler: up)
        buttonUp.addAction(action, for: .touchUpInside)
        action = UIAction(handler: down)
        buttonDown.addAction(action, for: .touchUpInside)
        action = UIAction(handler: left)
        buttonLeft.addAction(action, for: .touchUpInside)
        action = UIAction(handler: right)
        buttonRight.addAction(action, for: .touchUpInside)
    
    }

        func up(_ sender: UIAction) {
            if circle.frame.origin.y >= 50 {
                circle.frame.origin.y -= 30
            }}
        func down(_ sender: UIAction) {
            if circle.frame.origin.y <= 680 {
                circle.frame.origin.y += 30
            }}
        func left(_ sender: UIAction) {
            if circle.frame.origin.x >= 10 {
                circle.frame.origin.x -= 30
            }}
        func right(_ sender: UIAction) {
            if circle.frame.origin.x <= screenWidth - 100 {
                circle.frame.origin.x += 30
            }}
    

}


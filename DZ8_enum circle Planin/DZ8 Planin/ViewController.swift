//
//  ViewController.swift
//  DZ8 Planin
//
//  Created by Yuriy Planin on 26.07.22.
//

import UIKit

enum Movement {
    
    case up
    case down
    case left
    case right
    
    }

let buttonUp = UIButton(frame: CGRect(origin: .init(x: 200, y: 790), size: .init(width: 50, height: 50)))
let buttonDown = UIButton(frame: CGRect(origin: .init(x: 200, y: 850), size: .init(width: 50, height: 50)))
let buttonLeft = UIButton(frame: CGRect(origin: .init(x: 140, y: 850), size: .init(width: 50, height: 50)))
let buttonRight = UIButton(frame: CGRect(origin: .init(x: 260, y: 850), size: .init(width: 50, height: 50)))

let circle = UIView(frame: CGRect(origin: .init(x: 140, y: 450), size: CGSize(width: 100, height: 100)))

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
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
        direction(sender, movement: Movement.up)
    }
    func down(_ sender: UIAction) {
        direction(sender, movement: Movement.down)
    }
    func left(_ sender: UIAction) {
        direction(sender, movement: Movement.left)
    }
    func right(_ sender: UIAction) {
        direction(sender, movement: Movement.right)
    }
    
    func direction(_ sender: UIAction, movement: Movement) {
        switch movement {
        case .up:
            if circle.frame.origin.y >= 10 {
                circle.frame.origin.y -= 10
                label.text = "Up"
            } else {
                label.text = "Error"
            }
        case .down:
            if circle.frame.origin.y <= screenHeight - 40 {
                circle.frame.origin.y += 10
                label.text = "Down"
            } else {
                label.text = "Error"
            }
        case .left:
            if circle.frame.origin.x >= 10 {
                circle.frame.origin.x -= 10
                label.text = "Left"
            } else {
                label.text = "Error"
            }
        case .right:
            if circle.frame.origin.x <= screenWidth - 40 {
                circle.frame.origin.x += 10
                label.text = "Right"
            } else {
                label.text = "Error"
            }
        }
    }
}


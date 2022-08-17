//
//  ViewController.swift
//  11_Lesson_Tap gesture recognizer
//
//  Created by Yuriy Planin on 3.08.22.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
//    @IBOutlet var tapGesture: UITapGestureRecognizer!
    let hook = UIView(frame: CGRect(origin: CGPoint(x: 200, y: 300), size: CGSize(width: 60, height: 40)))
    
    lazy var left = UISwipeGestureRecognizer(target: self, action: #selector(swipeReconizedLeft))
    lazy var right = UISwipeGestureRecognizer(target: self, action: #selector(swipeReconizedRight))
    lazy var up = UISwipeGestureRecognizer(target: self, action: #selector(swipeReconizedUp))
    lazy var down = UISwipeGestureRecognizer(target: self, action: #selector(swipeReconizedDown))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hook.center = CGPoint(x: 200, y: 300)
        hook.backgroundColor = .red
        view.addSubview(hook)
//        let swipeGesture = UISwipeGestureRecognizer()
//        view.subviews.first?.addGestureRecognizer(swipeGesture)
//        swipeGesture.direction = [.left, .right, .up, .down]
        down.direction = .down
        up.direction = .up
        left.direction = .left
        right.direction = .right
        view.addGestureRecognizer(left)
        view.addGestureRecognizer(right)
        view.addGestureRecognizer(up)
        view.addGestureRecognizer(down)
        
        
//        let tap = UITapGestureRecognizer()
//
//        tap.addTarget(self, action: #selector(tapped))
//        tap.numberOfTapsRequired = 3
//        view.addGestureRecognizer(tap)
//
        
        
        // Do any additional setup after loading the view.
    }
//
//    @objc func tapped() {
//
//    }
//    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//    }
//
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//    }
//
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//    }
//}

    
//    @IBAction func longPressGesture(_ sender: UILongPressGestureRecognizer) {
//    }
    
    
    @objc func swipeReconizedLeft(_ sender: UISwipeGestureRecognizer) {
        hook.frame.origin.x -= 50
    }
    
    @objc func swipeReconizedRight(_ sender: UISwipeGestureRecognizer) {
        hook.frame.origin.x += 50
    }
    @objc func swipeReconizedUp(_ sender: UISwipeGestureRecognizer) {
        hook.frame.origin.y -= 50
    }
    @objc func swipeReconizedDown(_ sender: UISwipeGestureRecognizer) {
        hook.frame.origin.y += 50
    }
}


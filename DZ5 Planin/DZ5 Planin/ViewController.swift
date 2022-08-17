//
//  ViewController.swift
//  DZ5 Planin
//
//  Created by Yuriy Planin on 17.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    var n: Int = Int(arc4random_uniform(3) + 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.setTitle("Ku!", for: .normal)
        
       
        label1.setValue("Hello!", forKey: String)
        
    
    @IBAction func button1Taped(_ sender: UIButton) {
        n += n
        label1.text = String("Количество нажатий - ") + String(n)
        }
    
    @IBAction func changeButtonColorAndTitleTouched(sender: UIButton) {
        if sender.currentTitle !="Ku!" {
            sender.setTitle("Bu!", for: <#T##UIControl.State#>.normal)
        }
    }
    
    @IBAction func button2Taped(_ sender: UIButton) {
        n += n
        label1.text = String("Количество нажатий - ") + String(n)
        label2.text = String("Количество нажатий - ") + String(n)
    }
}


}

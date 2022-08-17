//
//  ViewController.swift
//  DZ9_segueYuriyPlanin
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTaped(_ sender: UIButton) {
        performSegue(withIdentifier: "From1To2", sender: textField)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showFifth" else { return }
        guard let destination = segue.destination as? FifthViewController else { return }
        destination.recievedString = "Hello!"
    }

}


//
//  ViewController.swift
//  DZ9-1_segue PlaninYuriy
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class ViewController: UIViewController {

    var string: String = "Hello!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTaped(_ sender: UIButton) {
        performSegue(withIdentifier: "From1To2", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showFifth" else { return }
        guard let destination = segue.destination as? FifthViewController else { return }
        destination.string = "Hello!"
    }

}


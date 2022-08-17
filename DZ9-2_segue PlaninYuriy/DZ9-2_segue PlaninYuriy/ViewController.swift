//
//  ViewController.swift
//  DZ9-2_segue PlaninYuriy
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class Beer {
    
    var cost: Int
    var name: String
    var country: String
    
    init (cost: Int, name: String, country: String) {
        
        self.name = name
        self.cost = cost
        self.country = country
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showSecond" else { return }
        guard let destination = segue.destination as? SecondViewController else { return }
        destination.Beer.init(cost:Int(String), name: String, country: String)
    }

}


//
//  SecondViewController.swift
//  DZ9-2_segue PlaninYuriy
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var beer: Beer = (3, "Coll", "Good")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = beer
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

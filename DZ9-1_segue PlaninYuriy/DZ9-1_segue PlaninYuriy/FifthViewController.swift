//
//  FifthViewController.swift
//  DZ9-1_segue PlaninYuriy
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var string: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = string
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

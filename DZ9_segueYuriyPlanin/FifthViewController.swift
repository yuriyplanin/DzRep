//
//  FifthViewController.swift
//  DZ9_segueYuriyPlanin
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var recievedString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = recievedString
        
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

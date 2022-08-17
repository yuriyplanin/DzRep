//
//  SecondViewController.swift
//  DZ9_segueYuriyPlanin
//
//  Created by Yuriy Planin on 31.07.22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func buttonTaped(_ sender: UIButton) {
        performSegue(withIdentifier: "From2To3", sender: self)
    }
    

}

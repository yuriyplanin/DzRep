//
//  ViewController.swift
//  DZ6 Planin
//
//  Created by Yuriy Planin on 19.07.22.
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

final class BarSingletone {
    
    static let shared = BarSingletone()
    
    var bank: Drink = Drink()
    var sale: Drink = Drink()
    
    private init(){
        
    }
}

class Drink {

    var volumeRemainderBeer1: Double = 100.0
    var volumeRemainderBeer2: Double = 50.0
    var volumeRemainderBeer3: Double = 50.0
    var counterMoney: Int = 0
    func reset() {
    counterMoney = 0
    }
}


class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var labelNew: UILabel!
    
    @IBOutlet var labBeer1: UILabel!
    @IBOutlet var labBeer2: UILabel!
    @IBOutlet var labBeer3: UILabel!
    
    var beer1 = Beer(cost: 1, name: "Heineken", country: "Netherlands")
    var beer2 = Beer(cost: 2, name: "Loffe", country: "Belgium")
    var beer3 = Beer(cost: 3, name: "Guinness", country: "Ireland")
    
    @IBAction func beer1(_ sender: UIButton) {
        BarSingletone.shared.sale.volumeRemainderBeer1 -= 0.5
        BarSingletone.shared.bank.counterMoney += self.beer1.cost

    }
    
    @IBAction func beer2(_ sender: UIButton) {
        BarSingletone.shared.sale.volumeRemainderBeer2 -= 0.5
        BarSingletone.shared.bank.counterMoney += self.beer2.cost
    }
    
    @IBAction func beer3(_ sender: UIButton) {
        BarSingletone.shared.sale.volumeRemainderBeer3 -= 0.5
        BarSingletone.shared.bank.counterMoney += self.beer3.cost
    }
    
    @IBAction func newDay(_ sender: UIButton) {
        label1.text = String("Bank - ") + String(BarSingletone.shared.bank.counterMoney)
        labBeer1.text = String("Hieneken VR - ") + String(BarSingletone.shared.sale.volumeRemainderBeer1)
        labBeer2.text = String("Loffe VR - ") + String(BarSingletone.shared.sale.volumeRemainderBeer2)
        labBeer3.text = String("Guinness VR - ") + String(BarSingletone.shared.sale.volumeRemainderBeer3)
        labelNew.text = String("Update bank - ") + String(0)
    }
    
    

    override func viewDidLoad() {
//        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//        backgroundImage.image = UIImage(named: "beer")
//        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
//        self.view.insertSubview(backgroundImage, at: 0)
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "beer.jpeg") ?? <#default value#>)
      
    }


}


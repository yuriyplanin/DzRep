//
//  ViewController.swift
//  DZ4
//
//  Created by Yuriy Planin on 13.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1 задание
        
        func factorial(_ n: Int) -> Int{
            if n == 0{
                return 1
            }
            else {
                return n * factorial(n-1)
            }
        }
        let z = factorial(5)
        print(z)
        
        var counter = Int(arc4random_uniform(3) + 1)
        print(counter)
        
        // 2 задание
        
//        var double = [1.0, 2.0, 3.0, 4.0, 5.0]
//        var intDouble = double.map{Int($0)}
//        let n = double.count
//        var sum = 0
////        for item in intDouble {
////            sum += item
////        }
//        while <#condition#> {
//            <#code#>
//        }
//        print(sum)
//
//        // 3 задание
//
//        let int: [Int] = [1, 2, 3, 4, 7, 9]
//        var mapedInt = int.map {_ in int.count}
//        print(int.count)
    }


}


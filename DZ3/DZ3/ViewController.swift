//
//  ViewController.swift
//  DZ3
//
//  Created by Yuriy Planin on 8.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1 задание
        
        func sum(_ x: Int, _ y: Int){
        print(x+y)
        }
        func sum(_ x: Double, _ y: Double){
        print(x+y)
        }
        func incr(_ x: Int, _ y: Int){
        print(x*y)
        }
        func incr(_ x: Double, _ y: Double){
        print(x*y)
        }
        func red(_ x: Int, _ y: Int){
        print(x/y)
        }
        func red(_ x: Double, _ y: Double){
        print(x/y)
        }
        red(3.2, 4.4)
        sum(45,45)
        
        // 2 задание
        
        func digitSum(_ n : Int) -> Int {
            var n = n
            var sum = 0
            while n > 0 {
                sum += n % 10
                n /= 10
            }
            return sum
        }
        print(digitSum(4321))
        
        // 3 задание
        
        let string1 = "авб"
        let string2 = "ввш"
        if string1 == string2 {
            print("Равно")
        }
        
        // 4 задание
        func countdown(firstNum num1: Int) {
            print(num1)
            if num1 > 0 {
                countdown(firstNum:num1)
            }
        }
countdown(firstNum: 20)
        
        // 5 задание
        func step(num1: Double, num2 :Double) -> Double{
            return pow(num1, num2)
        }
        step(num1: 2, num2: 3)
    }


}



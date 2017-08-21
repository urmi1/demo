//
//  ViewController.swift
//  Hello World
//
//  Created by URMANI on 7/20/17.
//  Copyright © 2017 URMANI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEnterNumber: UITextField!
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }


    @IBAction func btnCheckPrimeNumber(_ sender: Any) {
        
        
        var array = [2,3,4,5,6,9,8]
        
        for i in 1...array.count-1{
            
            print("i Value = \(i) Array Index = \(array[i])")
            
        }
        
        
        var isPrime = true
        
        if let checkNumber = txtEnterNumber.text{
            
            if let convertToInt = Int(checkNumber){
                
                
                for i in 5...convertToInt{
                    
                    print(i)
                }
                
                for i in 2...convertToInt-1{
                    if((convertToInt%i) == 0){
                        isPrime = false
                        break;
                    }
                }
                
                /*
                var i = 2
                while i < convertToInt {
                    
                    if( convertToInt%i == 0 ){
                        
                        isPrime = false
                    }
                    
                    i += 1
                }
                */
                
            }else{
                lblStatus.text = "Enter Number"

            }
        }else{
            
            lblStatus.text = "Enter Number"
        }
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  CoolCalc
//
//  Created by Joseth D. Chavis on 1/20/21.
//

import UIKit
import  Foundation
class ViewController: UIViewController {

    @IBOutlet weak var resultsLbl: UILabel!
    
    var leftSideNumber: Double = 0
    var rightSideNumber: Double = 0
    var isPerformingMath = false
    var calculatedOperation = 0
    var decimalNumber : Double = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
   
    @IBAction func numbersPressed(_ sender: UIButton) {
        if isPerformingMath == true{
            resultsLbl.text = String(sender.tag - 1)
            rightSideNumber = Double(resultsLbl.text!)!
            isPerformingMath = false
        }else {
            if sender.tag != 19 {
                resultsLbl.text = resultsLbl.text! + String(sender.tag - 1)
                rightSideNumber = Double(resultsLbl.text!)!
               
            } else {
                resultsLbl.text = resultsLbl.text! + "."
            }
            
        }
      
    }
    
    @IBAction func buttons(_ sender: UIButton) {
      
        if resultsLbl.text != nil && sender.tag != 11 && sender.tag != 18{
            leftSideNumber = Double(resultsLbl.text!)!
            if sender.tag == 14 {
                resultsLbl.text = "/"
            } else if sender.tag == 15{
                resultsLbl.text = "*"
            } else if sender.tag == 16{
                resultsLbl.text = "-"
            } else if sender.tag == 17{
                resultsLbl.text = "+"
            }
            calculatedOperation = sender.tag
            isPerformingMath = true
            
        } else if sender.tag == 18 {
            if calculatedOperation == 14{
                resultsLbl.text = String(leftSideNumber / rightSideNumber)
                print(leftSideNumber)
                print(rightSideNumber)
            } else if calculatedOperation == 15{
                resultsLbl.text = String(leftSideNumber * rightSideNumber)
            } else if calculatedOperation == 16 {
                resultsLbl.text = String(leftSideNumber - rightSideNumber)
            } else if calculatedOperation == 17 {
                resultsLbl.text = String(leftSideNumber + rightSideNumber)
            }
            
        }
        else if sender.tag == 11{
            resultsLbl.text = ""
            leftSideNumber = 0
            rightSideNumber = 0
            calculatedOperation = 0
            
            }
        }
    }



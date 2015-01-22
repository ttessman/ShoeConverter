//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Tyler Tessmann on 1/22/15.
//  Copyright (c) 2015 tylerOtto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedLabel: UILabel!
    
    @IBOutlet weak var womensText: UITextField!
    @IBOutlet weak var womensConvertedLabel: UILabel!
    
    @IBOutlet weak var yourAge: UITextField!
    @IBOutlet weak var convertedDogAge: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPress(sender: UIButton) {
        
        mensSizeTextField.resignFirstResponder()
        let conversionConstant = 30
        let sizeFromTxtField = mensSizeTextField.text.toInt()!
        //mensSizeTextField.text = ""
        
        mensConvertedLabel.hidden = false
        mensConvertedLabel.text = "\(sizeFromTxtField + conversionConstant)" + " in European Shoe Size"
        
        //assign user input to textfield
        //let sizeFromTxtField = mensSizeTextField.text
        
        //change string to int
        //let numFromTxtField = sizeFromTxtField.toInt()
        //unwrap options  aka numFromTxtField
        //var intForTxtField = numFromTxtField!
    
        //set constant for conversion factor & add intForTxtField to that value
        //let conversionConstant = 30
        //intForTxtField += conversionConstant
        
        //unhide converted label & then convert int back to string & finally update mensConvertedLabel text attrubute
        //mensConvertedLabel.hidden = false
        //let updatedSizeString = "\(intForTxtField)"
        //mensConvertedLabel.text = updatedSizeString
        
        
    }

    @IBAction func convertButtonPressWomen(sender: UIButton) {
        let converionC = 30.5
        let sizeFromTextField = Double((womensText.text as NSString).doubleValue)
        //womensText.text = ""
        womensConvertedLabel.hidden = false
        womensConvertedLabel.text = "\(sizeFromTextField + converionC) in European Shoe Size"
        womensText.resignFirstResponder()
        
    }
    @IBAction func clearLabel(sender: AnyObject) {
        convertedDogAge.hidden = true
        convertedDogAge.text = ""
        
    }
    @IBAction func clearMensLabel(sender: AnyObject) {
        mensConvertedLabel.hidden = true
        mensConvertedLabel.text = ""
    }
    
    @IBAction func clearWomensLabel(sender: AnyObject) {
        womensConvertedLabel.hidden = true
        womensConvertedLabel.text = ""
    }
    
    @IBAction func clearTextField(sender: UITextField) {
        sender.text = ""
    }
    
    @IBAction func convertToDogYears(sender: UIButton) {
        
        /*let youngConverionRate = 10.5
        let oldConversionRate = 4
        let constantYourAge = yourAge.text.toInt()!
        let ageBreak = 2
        yourAge.resignFirstResponder()
        
        if constantYourAge <= ageBreak{
            convertedDogAge.text = "\(Double(constantYourAge) * youngConverionRate) in dog years"
        } else {
            var adultLifeYears = constantYourAge - 2
            //println(adultLifeYears)
            adultLifeYears = adultLifeYears * oldConversionRate
            //println(adultLifeYears)
            let childhood = Double(ageBreak) * youngConverionRate
            //println(childhood)
            convertedDogAge.text = "\(childhood + Double(adultLifeYears)) in dog years"
        }
        */
        
        yourAge.resignFirstResponder()
        let doubleYourAge = Double((yourAge.text as NSString).doubleValue)
        var realDogYears:Double
        
        if doubleYourAge > 2{
            realDogYears = (10.5 * 2) + (doubleYourAge - 2) * 4
        }
        else
        {
            realDogYears = doubleYourAge * 10.5
        }
        convertedDogAge.text = "\(realDogYears) in dog years"
        convertedDogAge.hidden = false
       
        
    }
}


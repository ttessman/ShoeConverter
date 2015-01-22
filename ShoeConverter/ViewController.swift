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
        mensSizeTextField.text = ""
        
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
        womensText.text = ""
        womensConvertedLabel.hidden = false
        womensConvertedLabel.text = "\(sizeFromTextField + converionC) in European Shoe Size"
        womensText.resignFirstResponder()
        
    }
}


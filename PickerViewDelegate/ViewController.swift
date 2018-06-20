//
//  ViewController.swift
//  PickerViewDelegate
//
//  Created by vinnu subhash on 17/04/18.
//  Copyright © 2018 vinnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {
    
    // Subhash Message
    @IBOutlet weak var myTF: UITextField!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
         myTF.text = pickerData[row]
        self.view.endEditing(true)
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        return false
        
    }
    
   
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        if textField == myTF {
            return true
        }
        return true
    }
   

    var itemPicker : UIPickerView! = UIPickerView()
    var pickerData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData = ["vinu","subhash"]
        myTF.inputView = itemPicker
        itemPicker.delegate = self
        itemPicker.dataSource = self
        myTF.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        return pickerData[row]
    }
    
    

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
       
        //.hidden = true;
    }

}


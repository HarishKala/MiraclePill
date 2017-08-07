//
//  ViewController.swift
//  MiraclePill
//
//  Created by harish  on 27/07/17.
//  Copyright © 2017 Appster. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var fullname: UILabel!
    
    @IBOutlet weak var txtfullname: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var txtstreet: UITextField!
    
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var txtcountry: UITextField!
    
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var txtzipcode: UITextField!
    
    @IBOutlet weak var buynowbtn: UIButton!
    
    @IBOutlet weak var success: UIImageView!
    
    
    let states = ["Delhi", "Haryana", "JK", "Punjab", "UP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource=self
        statePicker.delegate=self
    }

    @IBAction func buynowbtnPressed(_ sender: Any) {
        
        fullname.isHidden=true
        txtfullname.isHidden=true
        street.isHidden=true
        txtstreet.isHidden=true
        state.isHidden=true
        statePickerBtn.isHidden=true
        country.isHidden=true
        txtcountry.isHidden=true
        zipcode.isHidden=true
        txtzipcode.isHidden=true
        buynowbtn.isHidden=true
        success.isHidden=false
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden=false
        country.isHidden=true
        txtcountry.isHidden=true
        zipcode.isHidden=true
        txtzipcode.isHidden=true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden=true
        country.isHidden=false
        txtcountry.isHidden=false
        zipcode.isHidden=false
        txtzipcode.isHidden=false

       
    }
}


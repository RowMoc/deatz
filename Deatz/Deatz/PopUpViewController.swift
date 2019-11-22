//
//  PopUpViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/21/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var existingRestrictions: UILabel!
    @IBOutlet weak var cuisinePreferences: UITextField!
    @IBOutlet weak var existingPreferences: UILabel!
    @IBOutlet weak var dietaryField: UITextField!
    
    @IBAction func changeRestrictions(_ sender: UIButton) {
        existingRestrictions.text = existingRestrictions.text! + ", " + dietaryField.text!
        dietaryField.text = ""
    }
    @IBAction func changePreferences(_ sender: UIButton) {
        existingPreferences.text = existingPreferences.text! + ", " + cuisinePreferences.text!
        cuisinePreferences.text = ""
    }

    
    @IBOutlet weak var dietaryRestrction: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 15
        existingRestrictions.text = "Existing Restrictions: Vegan"
        existingPreferences.text = "Existing Preferences: Mexican"
        

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

}

//
//  MyMenuViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/22/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class MyMenuViewController: UIViewController {

    @IBOutlet weak var d6: UIButton!
    @IBOutlet weak var d5: UIButton!
    @IBOutlet weak var d4: UIButton!
    @IBOutlet weak var d3: UIButton!
    @IBOutlet weak var d2: UIButton!
    @IBOutlet weak var d1: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var greyOut: UIView!
    @IBOutlet weak var menuItem: UIView!
    override func viewDidLoad() {
        d1.roundedButton()
        d2.roundedButton()
        d3.roundedButton()
        d4.roundedButton()
        d5.roundedButton()
        d6.roundedButton()
        image.layer.cornerRadius = 10
        label1.clipsToBounds = true
        label2.clipsToBounds = true
        label3.clipsToBounds = true
        label4.clipsToBounds = true
        label5.clipsToBounds = true
        label6.clipsToBounds = true 
        label1.layer.cornerRadius = 10
        label2.layer.cornerRadius = 10
        label3.layer.cornerRadius = 10
        label4.layer.cornerRadius = 10
        label5.layer.cornerRadius = 10
        label6.layer.cornerRadius = 10
        greyOut.isHidden = true
        menuItem.isHidden = true
        menuItem.layer.cornerRadius = 15
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func openMenu(_ sender: UIButton) {
        greyOut.isHidden = false
        menuItem.isHidden = false
    }
    
    
    @IBAction func closePopUp(_ sender: UIButton) {
        greyOut.isHidden = true
        menuItem.isHidden = true
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

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
    
    @IBOutlet weak var greyOut: UIView!
    @IBOutlet weak var menuItem: UIView!
    override func viewDidLoad() {
        d1.layer.cornerRadius = 10
        d2.layer.cornerRadius = 10
        d3.layer.cornerRadius = 10
        d4.layer.cornerRadius = 10
        d5.layer.cornerRadius = 10
        d6.layer.cornerRadius = 10
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

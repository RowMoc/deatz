//
//  RestaurantProfileViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 12/6/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class RestaurantProfileViewController: UIViewController {

    @IBOutlet weak var yourMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        yourMenu.roundedButton()
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

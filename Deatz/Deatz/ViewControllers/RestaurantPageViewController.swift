//
//  RestaurantPageViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/20/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class RestaurantPageViewController: UIViewController {

    @IBOutlet weak var picBackground: UILabel!
    @IBOutlet weak var reviewBackground: UILabel!
    @IBOutlet weak var infoBackground: UILabel!
    @IBOutlet weak var eventButton: UIButton!
    @IBOutlet weak var reviewButton: UIButton!
    @IBOutlet weak var yourMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        yourMenu.roundedButton()
        reviewButton.roundedButton()
        eventButton.roundedButton()
        picBackground.layer.cornerRadius = 10
        picBackground.clipsToBounds = true
        reviewBackground.layer.cornerRadius = 10
        reviewBackground.clipsToBounds = true
        infoBackground.layer.cornerRadius = 10
        infoBackground.clipsToBounds = true
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

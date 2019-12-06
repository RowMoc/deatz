//
//  FourthViewController.swift
//  Deatz
//
//  Created by Rowan Mockler on 2019/11/13.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var eggs: UILabel!
    @IBOutlet weak var soy: UILabel!
    @IBOutlet weak var cilantro: UILabel!
    @IBOutlet weak var nuts: UILabel!
    @IBOutlet weak var vegan: UILabel!
    @IBOutlet weak var allergyBackground: UILabel!
    @IBOutlet weak var restBackground: UILabel!
    @IBOutlet weak var oftenBackground: UILabel!
    @IBOutlet weak var editSettings: UIButton!
    @IBOutlet weak var editProfile: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        editSettings.roundedButton()
        editProfile.roundedButton()
       allergyBackground.layer.cornerRadius = 10
        allergyBackground.clipsToBounds = true
        restBackground.layer.cornerRadius = 10
        restBackground.clipsToBounds = true
        oftenBackground.layer.cornerRadius = 10
        oftenBackground.clipsToBounds = true
        cilantro.layer.cornerRadius = 10
        cilantro.clipsToBounds = true
        cilantro.layer.borderWidth = 1
        cilantro.layer.borderColor = UIColor.init(named: "Dark Purple")?.cgColor
        nuts.layer.cornerRadius = 10
        nuts.clipsToBounds = true
        nuts.layer.borderWidth = 1
        nuts.layer.borderColor = UIColor.init(named: "Dark Purple")?.cgColor
        vegan.layer.cornerRadius = 10
        vegan.clipsToBounds = true
        vegan.layer.borderWidth = 1
        vegan.layer.borderColor = UIColor.init(named: "Dark Purple")?.cgColor
        soy.layer.cornerRadius = 10
        soy.clipsToBounds = true
        soy.layer.borderWidth = 1
        soy.layer.borderColor = UIColor.init(named: "Dark Purple")?.cgColor
        eggs.layer.cornerRadius = 10
        eggs.clipsToBounds = true
        eggs.layer.borderWidth = 1
        eggs.layer.borderColor = UIColor.init(named: "Dark Purple")?.cgColor
        
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

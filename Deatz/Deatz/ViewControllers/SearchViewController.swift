//
//  ThirdViewController.swift
//  Deatz
//
//  Created by Rowan Mockler on 2019/11/13.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0))
    }

    
//properties
    let restaurantNames = [("sweetgreen"), ("Bare Bowls"),("Terun"), ("Orens Hummus"), ("Ramen Nagi"), ("Salt and Straw"), ("Asian Box")]
    let restaurantImages = [(UIImage(named: "sg")),(UIImage(named: "bare")), (UIImage(named: "terun")), (UIImage(named: "orenshummus-1")), (UIImage(named: "ramenagi")), (UIImage(named: "saltandstraw")), (UIImage(named: "asianbox"))]
    let restaurantRatings = [("4.5"), ("3.2"), ("3.1"),("5.0"), ("3.6"),("5.0"),("4.3")]
    let restaurantPrices = [("$"),("$$"), ("$$$"), ("$$"), ("$$"), ("$"),("$$")]
    let restaurantOptions = [("8 options"),("2 options"), ("1 option"), ("4 options"), ("3 options"), ("2 options"),("9 options")]
    @IBOutlet weak var findLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var cuisinePref: UITextField!
    @IBOutlet weak var popUP: UIView!
    @IBOutlet weak var greyOout: UIView!
    @IBOutlet weak var existingRestrictions: UILabel!
    @IBOutlet weak var dietaryField: UITextField!
    @IBOutlet weak var existingPreferences: UILabel!
    @IBAction func filterFunction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        filterButton.layer.borderWidth = 1
        filterButton.layer.borderColor = UIColorFromRGB(rgbValue: 0xB782EA).cgColor
        //filterButton.layer.borderColor = UIColor.black as! CGColor
        filterButton.layer.cornerRadius = 7
        popUP.isHidden = true
        popUP.layer.cornerRadius = 15
        greyOout.isHidden = true
        existingRestrictions.text = "Existing Restrictions: Vegan"
        existingPreferences.text = "Existing Preferences: Mexican"
        var frame = CGRect.zero
        frame.size.height = .leastNormalMagnitude
        tableView.tableHeaderView = UIView(frame: frame)
    }
    @IBAction func addRestriction(_ sender: UIButton) {
        existingRestrictions.text = existingRestrictions.text! + ", " + dietaryField.text!
        dietaryField.text = ""
    }
    @IBAction func addPreferences(_ sender: Any) {
        existingPreferences.text = existingPreferences.text! + ", " + cuisinePref.text!
        cuisinePref.text = ""
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func closePopUP(_ sender: UIButton) {
        popUP.isHidden = true
        greyOout.isHidden = true
    }
    @IBAction func filterButton(_ sender: UIButton) {
        popUP.isHidden = false
        greyOout.isHidden = false
        
    }
    @IBAction func searchButton(_ sender: UIButton) {
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RestaurantTableViewCell
        
        let name = restaurantNames[indexPath .row]
        let image = restaurantImages[indexPath .row]
        cell.nameLabel.text=name
        cell.iconImage.image = image
        cell.iconImage.layer.cornerRadius = 35
        cell.arrowLabel.text = ">"
        cell.starImage.image = UIImage(named: "star_outline_icon")
        cell.starsLabel.text = restaurantRatings[indexPath .row]
        cell.priceLabel.text = restaurantPrices[indexPath .row]
        cell.optionsImage.image = UIImage(named:"vegan")
        cell.optionsLabel.text = restaurantOptions[indexPath .row]
        return cell
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



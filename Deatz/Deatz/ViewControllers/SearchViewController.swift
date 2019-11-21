//
//  ThirdViewController.swift
//  Deatz
//
//  Created by Rowan Mockler on 2019/11/13.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    
//properties
    let restaurantNames = [("sweetgreen"), ("Terun"), ("Orens Hummus"), ("Ramen Nagi")]
    let restaurantImages = [(UIImage(named: "sg")), (UIImage(named: "terun")), (UIImage(named: "orenshummus-1")), (UIImage(named: "ramenagi")),  ]
    @IBOutlet weak var findLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
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





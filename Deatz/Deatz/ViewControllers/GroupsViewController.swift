//
//  GroupsViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/19/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {
    @IBOutlet weak var futureEvents: UIButton!
    
    @IBOutlet weak var event2place: UILabel!
    @IBOutlet weak var event1vote: UILabel!
    @IBOutlet weak var event2: UILabel!
    @IBOutlet weak var event1: UILabel!
    @IBOutlet weak var date2: UILabel!
    @IBOutlet weak var date1: UILabel!
    @IBOutlet weak var pastEvents: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var memberButton: UIButton!
    @IBOutlet weak var createEvent: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
   createEvent.roundedButton()
    settingsButton.roundedButton()
    memberButton.roundedButton()
        date1.text = "6"
        date2.text = "17"
        event1.text = "deatz launch"
        event2.text = "deatz release party"
        event2place.text = "@sweetgreen"
        event1vote.text = "Vote now!"
                event1vote.textColor = UIColor(named: "Light Purple")
        futureEvents.titleLabel?.textColor = UIColor(named: "Dark Purple")
          pastEvents.titleLabel?.textColor = UIColor(named: "Light Gray Color")
        // Do any additional setup after loading the view.
    }
    @IBAction func pastToggle(_ sender: UIButton) {
        date1.text = "3"
        date2.text = "1"
        event1.text = "Kate's Bday Celebration"
        event2.text = "deatz launch party!! "
        event1vote.text = "@zareens"
        event1vote.textColor = UIColor(named: "Dark Purple")
        event2place.text = "@terun"
                futureEvents.titleLabel?.font = UIFont(name: "Nunito-Light", size: 28)
                pastEvents.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 28)
       futureEvents.titleLabel?.textColor = UIColor(named: "Light Gray Color")
        
    }
    @IBAction func futureEvents(_ sender: UIButton) {
        date1.text = "6"
        date2.text = "17"
        event1.text = "deatz launch"
        event2.text = "deatz release party"
        event1vote.text = "Vote now!"
        event1vote.textColor = UIColor(named: "Light Purple")
         event2place.text = "@sweetgreen"
                futureEvents.titleLabel?.font = UIFont(name: "Nunito-Bold", size: 28)
        pastEvents.titleLabel?.font = UIFont(name: "Nunito-Light", size: 28)
        futureEvents.titleLabel?.textColor = UIColor(named: "Dark Purple")
        pastEvents.titleLabel?.textColor = UIColor(named: "Light Gray Color")
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

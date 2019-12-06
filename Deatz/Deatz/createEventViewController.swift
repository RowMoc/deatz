//
//  createEventViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 12/6/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class createEventViewController: UIViewController {

    @IBOutlet weak var createEvent: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createEvent.roundedButton()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if sender.source is createEventViewController{
  
        }
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

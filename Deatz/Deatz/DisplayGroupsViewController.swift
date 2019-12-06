//
//  DisplayGroupsViewController.swift
//  Deatz
//
//  Created by Elina Thadhani on 12/6/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class DisplayGroupsViewController: UIViewController {

    @IBOutlet weak var popUp: UIButton!
    
    var popUpIsUp = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapPopUp(_ sender: Any) {
        if popUpIsUp {
            UIView.animate(withDuration: 0.4, animations: {
                self.popUp.frame = CGRect(x: 0, y: 736, width: self.popUp.frame.width, height: self.popUp.frame.height)
                self.popUp.isUserInteractionEnabled = false
            }, completion: { complate in
                self.popUp.isUserInteractionEnabled = true
                self.popUpIsUp = false
            })
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                self.popUp.frame = CGRect(x: 0, y: 100, width: self.popUp.frame.width, height: self.popUp.frame.height)
                self.popUp.isUserInteractionEnabled = false
            }, completion: { complate in
                self.popUp.isUserInteractionEnabled = true
                self.popUpIsUp = true
            })
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

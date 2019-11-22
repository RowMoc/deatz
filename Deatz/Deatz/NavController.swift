//
//  NavController.swift
//  Deatz
//
//  Created by Elina Thadhani on 11/20/19.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit

class NavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.viewControllers.removeAll()
        let initialView = self.storyboard?.instantiateViewController(withIdentifier: "calendar") as! CalendarViewController
        let customViewControllersArray : NSArray = [initialView]
        self.navigationController?.viewControllers = customViewControllersArray as! [UIViewController]
        self.navigationController?.viewControllers = [self]
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

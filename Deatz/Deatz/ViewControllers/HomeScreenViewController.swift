//
//  FirstViewController.swift
//  Deatz
//
//  Created by Rowan Mockler on 2019/11/13.
//  Copyright © 2019 Deatz. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

extension UIButton{
    func roundedButton(){
        let maskPath1 = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: [.topLeft , .bottomLeft, .bottomRight, .topRight],
                                     cornerRadii: CGSize(width: 14, height: 14))
        let maskLayer1 = CAShapeLayer()
        maskLayer1.frame = bounds
        maskLayer1.path = maskPath1.cgPath
        layer.mask = maskLayer1
    }
}
class HomeScreenViewController: UIViewController {
    // properties
    @IBOutlet weak var activityIndicator: NVActivityIndicatorView!
    @IBOutlet weak var findR: UIButton!
    @IBOutlet weak var createG: UIButton!
    @IBOutlet weak var createE: UIButton!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var shadowView1: UIView!
    @IBOutlet weak var shadowView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configureShadow(button: findR, i: 1)
//        configureShadow(button: createE, i: 2)
//        configureShadow(button: createG, i: 3)
        findR.roundedButton()
        createG.roundedButton()
        createE.roundedButton()
        
        
//        findButton.roundedButton()
//        createEvent.roundedButton()
//        createaGroup.roundedButton()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.9) { // Change `2.0` to the desired number of seconds.
            self.activityIndicator.stopAnimating()
            // Code you want to be delayed
        }
    }
    
    
    func configureShadow(button: UIButton, i: Int) {
        var shadow = UIView()
        if i == 1 {
            shadow = shadowView
        } else if i == 2 {
            shadow = shadowView1
        } else {
            shadow = shadowView2
        }
        shadow.frame = CGRect(x: button.frame.minX,
                                              y: button.frame.minY,
                                              width: button.frame.width,
                                              height: button.frame.height)
//        self.view.insertSubview(shadowView, aboveSubview: background)
//        self.view.bringSubviewToFront(createG)
//        self.view.bringSubviewToFront(createE)
//        self.view.insertSubview(shadowView, at: 0)
//        self.view.sendSubviewToBack(background)
        //self.view.insertSubview(shadowView, : 0)
        //self.view.insertSubview(shadowView, belowSubview: button)
        self.applyShadow(width: 0, height: 3, shadowView: shadow)
    }
    
    func applyShadow(width: CGFloat, height: CGFloat, shadowView: UIView) {
        let shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 14.0)
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowRadius = 3.0
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: width, height: height)
        shadowView.layer.shadowOpacity = 0.3
        shadowView.layer.shadowPath = shadowPath.cgPath
    }

}

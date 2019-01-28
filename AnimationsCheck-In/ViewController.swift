//
//  ViewController.swift
//  AnimationsCheck-In
//
//  Created by Jose Alarcon Chacon on 1/28/19.
//  Copyright © 2019 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var cyclist: UIButton!
    @IBOutlet weak var setName: UILabel!
    
    
    private var animation: UIViewPropertyAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        animation = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
        })
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        animation.fractionComplete = CGFloat(sender.value)
    }
    @IBAction func ImageTransition(_ sender: UIButton) {
        if cyclist.imageView?.image == UIImage(named: "cyclist") {
            UIView.transition(with: cyclist, duration: 0, options: [], animations: {
                self.cyclist.setImage(UIImage(named: "dog"), for: .normal)
                self.setName.text = "dog"
            })
        } else {
            UIView.transition(with: cyclist, duration: 1.0, options: [], animations: {
                self.cyclist.setImage(UIImage(named: "cyclist"), for: .normal)
                    self.setName.text = "cyclist"
            })
        }
    }
}



//
//  ViewController.swift
//  Popup
//
//  Created by Chathura on 1/17/17.
//  Copyright © 2017 Chathura. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
        var popViewController : PopupViewController!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showPopup(_ sender: AnyObject) {
        self.popViewController = PopupViewController(nibName: "PopupViewController", bundle: nil)
        self.popViewController.title = "This is a popup view"
        self.popViewController.showInView(self.view, withImage: UIImage(named: "login"), withMessage: "You just triggered a great popup window", animated: true)
    }

}


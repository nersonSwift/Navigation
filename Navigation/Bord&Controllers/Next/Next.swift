//
//  NextViewController.swift
//  Navigation
//
//  Created by Александр Сенин on 18/11/2018.
//  Copyright © 2018 Александр Сенин. All rights reserved.
//

import UIKit

class Next: UIViewController, ViewControllerNavigationProtocol{
    var navigation: Navigation!
    
    static func storyboardInstance(navigation: Navigation) -> UIViewController? {
        let storyboard = UIStoryboard(name: "\(self)", bundle: nil)
        let next = storyboard.instantiateInitialViewController() as? Next
        next?.navigation = navigation
        return next
    }
    
    @IBOutlet weak var label: UILabel!
    var i = 0
    
    @IBAction func count(_ sender: Any) {
        i += 1
        label.text = "\(i)"
    }
    
    @IBAction func main(_ sender: Any) {
        navigation.transitionToViewController(viewControllerType: Main(), special: nil)
    }
    
    @IBAction func goNew(_ sender: Any) {
        navigation.transitionToViewController(viewControllerType: New(), special: {(viewController) in
            let new = viewController as! New
            new.i = self.i
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

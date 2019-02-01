//
//  ViewController.swift
//  Navigation
//
//  Created by Александр Сенин on 18/11/2018.
//  Copyright © 2018 Александр Сенин. All rights reserved.
//

import UIKit

class Main: UIViewController, ViewControllerNavigationProtocol{
    var navigation: Navigation!
    
    static func storyboardInstance(navigation: Navigation) -> UIViewController? {return Main()}
    
    
    @IBAction func next(_ sender: Any) {
        navigation.transitionToViewController(viewControllerType: Next(), special: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigation = Navigation(viewController: self)
    }


}


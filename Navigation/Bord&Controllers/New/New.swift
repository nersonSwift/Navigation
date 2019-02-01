//
//  New.swift
//  Navigation
//
//  Created by Александр Сенин on 21/11/2018.
//  Copyright © 2018 Александр Сенин. All rights reserved.
//

import UIKit

class New: UIViewController, ViewControllerNavigationProtocol {
    var navigation: Navigation!
    
    static func storyboardInstance(navigation: Navigation) -> UIViewController? {
        let storyboard = UIStoryboard(name: "\(self)", bundle: nil)
        let new = storyboard.instantiateInitialViewController() as? New
        new?.navigation = navigation
        return new
    }
    

    @IBOutlet weak var label: UILabel!
    var i = 0
    
    
    @IBAction func back(_ sender: Any) {
       navigation.transitionToViewController(viewControllerType: Main(), special: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(i)"
        
    }
}

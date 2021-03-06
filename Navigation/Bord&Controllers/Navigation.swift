//
//  Navigation.swift
//  Navigation
//
//  Created by Александр Сенин on 18/11/2018.
//  Copyright © 2018 Александр Сенин. All rights reserved.
//

import UIKit

class Navigation{
    var controllers: [UIViewController] = []
    var selectView: UIViewController{
        return controllers.last!
    }
    
    init(viewController: UIViewController) {
        controllers.append(viewController)
    }
    
    func transitionToViewController(viewControllerType: ViewControllerNavigationProtocol, special: ((UIViewController) -> Void)?){
        
        for i in 0 ..< controllers.count{
            if type(of: viewControllerType) == type(of: controllers[i]) {
                controllers[i].dismiss(animated: true, completion: nil)
                controllers[i+1 ..< controllers.count] = []
                return
            }
        }
        
        if let nextViewController = type(of: viewControllerType).storyboardInstance(navigation: self) {
            special?(nextViewController)
            selectView.present(nextViewController, animated: true, completion: nil)
            controllers.append(nextViewController)
        }
    }
}

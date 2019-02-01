//
//  NavigationProtocol.swift
//  Navigation
//
//  Created by Александр Сенин on 18/11/2018.
//  Copyright © 2018 Александр Сенин. All rights reserved.
//

import UIKit

protocol ViewControllerNavigationProtocol{
    var navigation: Navigation! {get set}
    static func storyboardInstance(navigation: Navigation) -> UIViewController?
}

//
//  UIViewController.swift
//  Rainstorm
//
//  Created by Bart Jacobs on 06/06/2018.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // MARK: - Static Properties
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
}

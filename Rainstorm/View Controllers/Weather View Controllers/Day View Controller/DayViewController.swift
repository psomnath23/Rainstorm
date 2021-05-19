//
//  DayViewController.swift
//  Rainstorm
//
//  Created by Bart Jacobs on 06/06/2018.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

final class DayViewController: UIViewController {
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup View
        setupView()
    }
    
    // MARK: - View Methods
    
    private func setupView() {
        // Configure View
        view.backgroundColor = .green
    }
    
}

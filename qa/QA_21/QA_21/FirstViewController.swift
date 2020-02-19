//
//  FirstViewController.swift
//  QA_21
//
//  Created by REYNIKOV ANTON on 19.02.2020.
//  Copyright © 2020 REYNIKOV ANTON. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    func createSecondViewController() {
        let secondViewController = SecondViewController()
        secondViewController.view.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSecondViewController()
    }
}

//
//  ViewController.swift
//  TestProject
//
//  Created by Ebubechukwu Dimobi on 04.06.2021.
//

import UIKit
import WithPods

class ViewController: UIViewController {
    
    var sex = WithPods()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(sex.showView())
    }


}


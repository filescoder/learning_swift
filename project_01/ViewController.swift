//
//  ViewController.swift
//  project_01
//
//  Created by Nicola Fabiani on 19/11/2018.
//  Copyright © 2018 Nicola Fabiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }


}


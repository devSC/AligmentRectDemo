//
//  ViewController.swift
//  AligmentRectDemo
//
//  Created by Wilson Yuan on 2017/5/27.
//  Copyright © 2017年 Wilson Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let image = UIImage(named: "aligmentRect") else {
            return
        }
        //because the aligmentRect have a drop shadow 
        //so need to set a rect insets for image to adjust the valid image is center of view
        let edgeImage = image.withAlignmentRectInsets(UIEdgeInsetsMake(0, 0, 30, 30))
        let testImageView = UIImageView(image: edgeImage)
        
        view.addSubview(testImageView)
        testImageView.translatesAutoresizingMaskIntoConstraints = false
        testImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


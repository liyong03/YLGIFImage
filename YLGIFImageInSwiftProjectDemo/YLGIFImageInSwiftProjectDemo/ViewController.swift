//
//  ViewController.swift
//  YLGIFImageInSwiftProjectDemo
//
//  Created by Yong Li on 6/15/14.
//  Copyright (c) 2014 Yong Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @lazy var imageView:YLImageView = YLImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.frame = CGRectMake(10, 50, 300, 240)
        self.view.addSubview(self.imageView)
        let path = NSBundle.mainBundle().URLForResource("iwatch", withExtension: "gif")
        let data = NSData(contentsOfURL: path)
        self.imageView.image = YLGIFImage(data: data)
        //self.imageView.image = YLGIFImage(contentsOfFile: "iwatch")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


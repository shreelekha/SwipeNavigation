//
//  ViewController.swift
//  SwipeNavigation
//
//  Created by Shree Tanna on 2017-01-27.
//  Copyright © 2017 Shree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController0 = ViewController0(nibName: "ViewController0", bundle: nil)
       
        self.addChildViewController(viewController0)
        self.scrollView.addSubview(viewController0.view)
        viewController0.didMove(toParentViewController: self)
        
        let viewController1 = ViewController1(nibName: "ViewController1", bundle: nil)
        
        var frame1 = viewController1.view.frame
        frame1.origin.x = self.view.frame.size.width
        viewController1.view.frame = frame1
        
        self.addChildViewController(viewController1)
        self.scrollView.addSubview(viewController1.view)
        viewController1.didMove(toParentViewController: self)
        
        let viewController2 = ViewController2(nibName: "ViewController2", bundle: nil)
        
        var frame2  = viewController2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        viewController2.view.frame = frame2
        
        self.addChildViewController(viewController2)
        self.scrollView.addSubview(viewController2.view)
        viewController2.didMove(toParentViewController: self)
        
        let viewController3 = ViewController3(nibName: "ViewController3", bundle: nil)
        
        var frame3 = viewController3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        viewController3.view.frame = frame3
        
        self.addChildViewController(viewController3)
        self.scrollView.addSubview(viewController3.view)
        viewController3.didMove(toParentViewController: self)
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 4, height: self.view.frame.size.height - 66) // 66 = height of navigationBar(44) + statusbar(22)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


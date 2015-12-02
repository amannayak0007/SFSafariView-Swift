//
//  ViewController.swift
//  SFSafariView Swift
//
//  Created by aman jain on 02/12/15.
//  Copyright © 2015 aman jain. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func SFSafariVC(sender: AnyObject) {
        let SFView = SFSafariViewController(URL: NSURL(string: "http://www.digitalhole.co/")!, entersReaderIfAvailable: false)
        SFView.delegate = self
        self.presentViewController(SFView, animated: true, completion: nil)
    }


    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}


//
//  SaveViewController.swift
//  handmadeCalenderSampleOfSwift
//
//  Created by erijae on 2015/12/06.
//  Copyright © 2015年 just1factory. All rights reserved.
//

import UIKit


class SaveViewController: UIViewController {
    
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var titleTextField: UITextField!
    
    @IBAction func button() {
        performSegueWithIdentifier("toFashionVC", sender: nil)
    }
    

    
}

//
//  SaveViewController.swift
//  handmadeCalenderSampleOfSwift
//
//  Created by erijae on 2015/12/06.
//  Copyright © 2015年 just1factory. All rights reserved.
//

import UIKit


class SaveViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet var contentTextView: UITextView!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var photoSelectButton: UIButton!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var displayDateLabel: UILabel!
    
    
    @IBAction func photoSelectButtonTouchDown(sender: AnyObject){
        if !UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary){
            UIAlertView(title: "警告", message: "Photoライブラリにアクセスできません", delegate: nil, cancelButtonTitle: "OK").show()
        } else {
            let imagePickerController = UIImagePickerController()
            
            imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            imagePickerController.allowsEditing = true
            imagePickerController.delegate = self
            self.presentViewController(imagePickerController, animated:true, completion:nil)
        }
        
        func imagePickerController(picker: UIImagePickerController!, didfinishPikingMediaWithInfo info: NSDictionary!){
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            mainImageView.image = image
            
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    
    @IBOutlet var fashionimage: UIImageView!
    
//    @IBAction func selectBackground(){
//        let imagePickerController: UIImagePickerController = UIImagePickerController()
//        
//        imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
//        imagePickerController.delegate = self
//        imagePickerController.allowsEditing = true
//        
//        self.presentViewController(imagePickerController, animated: true, completion: nil)
//    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let image: UIImage = info[UIImagePickerControllerEditedImage] as! UIImage
        fashionimage!.image = image
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save() {
    
    }
    

    

    
}

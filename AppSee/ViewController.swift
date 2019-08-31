//
//  ViewController.swift
//  AppSee
//
//  Created by Jake Garcia on 8/31/19.
//  Copyright © 2019 Jake Garcia. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            
            
        }
        
    }
    
    func detect(image: CIImage) {
        
        //initialize model
        
        guard let model = try? VNCoreMLModel(for: SqueezeNet().model) else {
            fatalError("error intializing the model")
        }
        
        
        
        
        
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: true)
        
    }
    
}


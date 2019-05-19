//
//  ViewController.swift
//  SeeFood
//
//  Created by Stuart Claghorn on 5/19/19.
//  Copyright © 2019 sclaghorn. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let userPickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = userPickedImage
            
//            guard let ciimage = CIImage(image: userPickedImage) else {
//                fatalError("Could not convert UIImage into CIImage")
//            }
//            print(ciimage.description)
            
//            detect(image: ciimage)
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
//    func detect(image: CIImage) {
//
//        guard let model = try? VNCoreMLRequest(for: Inceptionv3().model) else {
//            fatalError("Error loading CoreML Model failed")
//        }
//
//        let request = VNCoreMLRequest(model: model) {
//            guard let results = request.results as? [VNClassificationObservation] else {
//                fatalError("Model failed to classify image")
//            }
//            print(results)
//        }
//
//        let handler = VNImageRequestHandler(ciImage: image)
//        do {
//            try! handler.perform([request])
//        } catch {
//            print(error)
//        }
//    }
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        present(imagePicker, animated: true, completion: nil)
    }
}


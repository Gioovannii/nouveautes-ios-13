//
//  ImagePicker.swift
//  SwiftUI_lists
//
//  Created by Maxime Britto on 24/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image:Image?
    @Binding var shouldDisplayPicker:Bool
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        
    }
    
    func makeCoordinator() -> ImagePicker.Coordinator {
        return Coordinator(imagePicker: self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        init(imagePicker:ImagePicker) {
            self.imagePicker = imagePicker
        }
        let imagePicker:ImagePicker
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {

            }
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            
        }
    }
}

#if DEBUG
struct ImagePicker_Previews: PreviewProvider {
    @State static var image:Image? = nil
    @State static var presentPicker:Bool = false
    static var previews: some View {
        ImagePicker(image: $image, shouldDisplayPicker: $presentPicker)
    }
}
#endif

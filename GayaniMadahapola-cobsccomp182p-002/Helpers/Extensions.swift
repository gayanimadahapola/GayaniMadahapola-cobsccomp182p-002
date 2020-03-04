//
//  Extensions.swift
//  GayaniMadahapola-cobsccomp182p-002
//
//  Created by Gayani Madubhashini on 3/4/20.
//  Copyright © 2020 Gayani Madubhashini. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController
{
    
    func makeLogOutAlert()
    {
        var refreshAlert = UIAlertController(title: "Log Out", message: "Are You Sure to Log Out ? ", preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (action: UIAlertAction!) in
            self.navigationController?.popToRootViewController(animated: true)
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
            refreshAlert .dismiss(animated: true, completion: nil)
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
}

public extension UIImagePickerController {
    
    private func showAlert(targetName: String, completion: @escaping (Bool)->()) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let alertVC = UIAlertController(title: "Access to the \(targetName)",
                message: "Please provide access to your \(targetName)",
                preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "Settings", style: .default, handler: { action in
                guard   let settingsUrl = URL(string: UIApplication.openSettingsURLString),
                    UIApplication.shared.canOpenURL(settingsUrl) else { completion(false); return }
                UIApplication.shared.open(settingsUrl, options: [:]) {
                    [weak self] _ in self?.showAlert(targetName: targetName, completion: completion)
                }
            }))
            alertVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in completion(false) }))
            UIApplication.shared.delegate?.window??.rootViewController?.present(alertVC, animated: true, completion: nil)
        }
   }
}

//
//  GreetingViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 8.12.21.
//

import UIKit

private let numberPhone = "+375447363803"
private let email = "shabunia.alex@icloud.com"
private let name = "Alexander"

class GreetingViewController: UIViewController {
    
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func choiseAlert (title: String, message: String) {
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "ok",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showNumber(_ sender: UIButton) {
        choiseAlert(title: "Number", message: numberPhone)
    }
    
    @IBAction func showEmail(_ sender: UIButton) {
        choiseAlert(title: "Email", message: email)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.bounds.height / 2
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        
        myNameLabel.text = "Hi, my name's \(name)!"
        
    }
}


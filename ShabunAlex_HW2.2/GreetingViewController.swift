//
//  ViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 8.12.21.
//

import UIKit

class GreetingViewController: UIViewController {
    
    private let numberPhone = "+375447363803"
    private let email = "shabunia.alex@icloud.com"
    private let name = "Alexander"
    
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func showNumber(_ sender: UIButton) {
        let alert = UIAlertController(title: "Number", message: numberPhone, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showEmail(_ sender: UIButton) {
        let alert = UIAlertController(title: "Email", message: email, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.bounds.height / 2
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        
        myNameLabel.text = "Hi, my name's \(name)!"
        
    }
    
}


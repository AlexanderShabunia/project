//
//  photoHobbyViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 9.12.21.
//

import UIKit

class PhotoHobbyViewController: UIViewController {
    
    var descriptionHobby: String?
    
    @IBOutlet weak var descriptionHobbyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let descriptionHobby = self.descriptionHobby else { return }
        descriptionHobbyLabel.text = "\(descriptionHobby)"
        
        if descriptionHobbyLabel.text == "I like to go fishing" {
            imageView.image = UIImage(named: "Fishing")} else if
                descriptionHobbyLabel.text == "I love cars and everything connected with them" {
                imageView.image = UIImage(named: "Auto")
            } else {
                imageView.image = UIImage(named: "Friends")
            }
    }
    
}


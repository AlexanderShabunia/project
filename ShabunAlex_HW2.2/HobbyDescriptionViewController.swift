//
//  HobbyDescriptionViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 9.12.21.
//

import UIKit

class HobbyDescriptionViewController: UIViewController {
    
    var descriptionHobby: String?
    var choiseHobby: String?
    
    @IBOutlet weak var descriptionHobbyLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let descriptionHobby = self.descriptionHobby else { return }
        descriptionHobbyLabel.text = "\(descriptionHobby)"
        
        imageView.image = UIImage(named: "\(choiseHobby ?? "")")
        
    }
}

//
//  HobbyViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 9.12.21.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBAction  func unwind(unwindSegue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
        switch  identifier {
        case "FishSegueIdentifier":
            guard let fishSegueIdentifier = segue.destination as? DescriptionHobbyViewController else { return }
            fishSegueIdentifier.descriptionHobby = "I like to go fishing"
            fishSegueIdentifier.choicePictureHobby = UIImage.init(named: "Fishing")
        case "AutoSegueIdentifier":
            guard let autoSegueIdentifier = segue.destination as? DescriptionHobbyViewController else { return }
            autoSegueIdentifier.descriptionHobby = "I love cars and everything connected with them"
            autoSegueIdentifier.choicePictureHobby = UIImage.init(named: "Auto")
        case "FriendsSegueIdentifier":
            guard let friendsSegueIdentifier = segue.destination as? DescriptionHobbyViewController else { return }
            friendsSegueIdentifier.descriptionHobby = "I like to get together with friends and play board games"
            friendsSegueIdentifier.choicePictureHobby = UIImage.init(named: "Friends")
        default:
            break
        }
    }
}

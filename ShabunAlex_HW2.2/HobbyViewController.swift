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
            guard let fishSegueIdentifier = segue.destination as? HobbyDescriptionViewController else { return }
            fishSegueIdentifier.descriptionHobby = "I like to go fishing"
            fishSegueIdentifier.choiseHobby = "Fishing"
        case "AutoSegueIdentifier":
            guard let autoSegueIdentifier = segue.destination as? HobbyDescriptionViewController else { return }
            autoSegueIdentifier.descriptionHobby = "I love cars and everything connected with them"
            autoSegueIdentifier.choiseHobby = "Auto"
        case "FriendsSegueIdentifier":
            guard let friendsSegueIdentifier = segue.destination as? HobbyDescriptionViewController else { return }
            friendsSegueIdentifier.descriptionHobby = "I like to get together with friends and play board games"
            friendsSegueIdentifier.choiseHobby = "Friends"
        default:
            break
        }
    }
}

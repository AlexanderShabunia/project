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
        let witchIdentifier = segue.identifier
        switch witchIdentifier {
        case "FishSegueIdentifier": guard let fishSegueIdentifier = segue.destination as? PhotoHobbyViewController
            else { return }
            fishSegueIdentifier.descriptionHobby = "I like to go fishing"
            fishSegueIdentifier.choiseHobby = "Fishing"
        case "AutoSegueIdentifier": guard let autoSegueIdentifier = segue.destination as? PhotoHobbyViewController else { return }
            autoSegueIdentifier.descriptionHobby = "I love cars and everything connected with them"
            autoSegueIdentifier.choiseHobby = "Auto"
        case "FriendsSegueIdentifier": guard let friendsSegueIdentifier = segue.destination as? PhotoHobbyViewController else { return }
            friendsSegueIdentifier.descriptionHobby = "I like to get together with friends and play board games"
            friendsSegueIdentifier.choiseHobby = "Friends"
        default:
            break
        }
    }
}

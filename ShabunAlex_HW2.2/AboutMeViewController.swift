//
//  ViewController.swift
//  ShabunAlex_HW2.2
//
//  Created by Alex on 9.12.21.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    private let infoAboutMe = "I am 27 years old. I graduated from the Belarusian State University of Informatics and Radioelectronics. After graduation, he got a job at the Belarusian State Center <Belmikroanalysis>. In the course of work, he mastered high-tech equipment (Manual and semi-automatic sounding stations). I always did everything on time, there were never any comments. After 4 years of continuous work in one place, I wanted to learn something new. Since I like the technology from the Apple company and their approach to their business, I decided to learn how to develop applications for ios"
    
    @IBOutlet weak var aboutMeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutMeTextView.text = infoAboutMe
    }
    
}

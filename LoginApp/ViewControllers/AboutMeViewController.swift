//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by roman Khilchenko on 16.08.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupModelAboutMe()
        setupLabel()
    }
    
    private func setupModelAboutMe() {
        view.addVerticalGradientLayer()
        aboutMeLabel.text = user.person.hobby
        
    }
    
    private func setupLabel() {
        aboutMeLabel.numberOfLines = 0
        aboutMeLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
}



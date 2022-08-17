//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by roman Khilchenko on 16.08.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    private let modelPerson = Person.personModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupModelAboutMe(modelPerson[0])
        setupLabel() 
    }
    
    private func setupModelAboutMe(_ model: Person) {
        aboutMeLabel.text = model.hobby
        
    }
    
    private func setupLabel() {
        aboutMeLabel.numberOfLines = 0
        aboutMeLabel.font = .systemFont(ofSize: 15, weight: .bold)
    }
    
}



//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by roman Khilchenko on 12.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var handGreetingLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    //MARK: - PublicProperty
    var user: User!
    
    //MARK: Переопределенные методы
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupButton()
    }
    
    //MARK: - Приватные методы
    private func setupLabel() {
        let labels = [welcomeLabel, handGreetingLabel]
        let namesLabel = ["", "\u{1F44B}"]
        view.addVerticalGradientLayer()
        for (index, label) in labels.enumerated() {
            welcomeLabel.text = "Welcome, \(user.person.fullName)!"
            guard let label = label else { return }
            label.text = namesLabel[index]
            label.textColor = .white
            if label.text == "\u{1F44B}" {
                label.font = .systemFont(ofSize: 60)
            } else {
                label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            }
        }
    }
    

    private func setupButton() {
        logOutButton.setTitle("Log out", for: .normal)
        logOutButton.tintColor = .white
        logOutButton.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    
}



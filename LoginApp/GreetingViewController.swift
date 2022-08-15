//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by roman Khilchenko on 12.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var handGreetingLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    //MARK: - переменная для хранения имени пользователя
    var userLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupButton()
    }
    
    //MARK: - Приватные методы
    private func setupLabel() {
        let labels = [welcomeLabel, userNameLabel, handGreetingLabel]
        let namesLabel = ["Welcome,", "", "\u{1F44B}"]
        for (index, label) in labels.enumerated() {
            userNameLabel.text = userLabel
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

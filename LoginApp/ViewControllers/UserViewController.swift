//
//  UserViewController.swift
//  LoginApp
//
//  Created by roman Khilchenko on 16.08.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var profileButton: UIButton!
    
    @IBOutlet var userImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var townLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    //MARK: - Приватные свойства
    private let personModel = Person.personModel()
    
    
    //MARK: - Переопределенные методы
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setupLabel()
        setupModelPerson(personModel[0])
    }
    
    //MARK: - Приватные методы
    private func setupModelPerson(_ model: Person) {
        userImage.image = UIImage(named: model.image)
        nameLabel.text = model.name
        surnameLabel.text = model.surname
        ageLabel.text = model.age
        townLabel.text = model.city
        jobLabel.text = model.work
    }
    
    private func setupButton() {
        profileButton.setTitleColor(.white, for: .normal)
        profileButton.setTitle("Дополнительная Информация", for: .normal)
        profileButton.layer.cornerRadius = 30
        profileButton.clipsToBounds = true
        
    }
    
    private func setupLabel() {
        let labels = [nameLabel, surnameLabel, ageLabel, townLabel, jobLabel]
        for label in labels {
            guard let label = label else { return }
            label.numberOfLines = 0
        }
    }
}

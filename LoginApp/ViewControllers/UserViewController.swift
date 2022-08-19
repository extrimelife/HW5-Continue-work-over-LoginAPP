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
    
    var user: User!
    
    //MARK: - Переопределенные методы
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setupLabel()
        setupModelPerson()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMe = segue.destination as? AboutMeViewController else { return }
        aboutMe.user = user
        
    }
    
    //MARK: - Приватные методы
    private func setupModelPerson() {
        view.addVerticalGradientLayer()
        userImage.image = UIImage(named: user.person.image)
        nameLabel.text = "Имя: \(user.person.name)"
        surnameLabel.text = "Фамилия: \(user.person.surname)"
        ageLabel.text = "Возраст: \(user.person.age)"
        townLabel.text = "Город: \(user.person.city)"
        jobLabel.text = "Работа: \(user.person.work)"
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
    


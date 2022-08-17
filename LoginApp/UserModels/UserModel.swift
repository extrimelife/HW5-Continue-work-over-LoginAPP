//
//  UserModel.swift
//  LoginApp
//
//  Created by roman Khilchenko on 16.08.2022.
//

import UIKit

struct User {
    let login: String
    let password: String
    static func userModel() -> [User] {
        var modelUser: [User] = []
        modelUser.append(User(login: "Роман Хильченко", password: "pass"))
        return modelUser
    }
}

struct Person {
    let image: String
    let name: String
    let surname: String
    let age: String
    let city: String
    let work: String
    let hobby: String
    
    static func personModel() -> [Person] {
        var modelPerson: [Person] = []
        modelPerson.append(Person(image: "image", name: "Роман", surname: "Хильченко", age: "31 год", city: "Алушта", work: "Работаю торговым представителем, и так ненавижу все это дело.", hobby: "Родился и вырос в замечательном и очень маленьком Крымском городке на побережье черного моря. После школы поступил в Ялтинский университет,вообщем специальность моя Менеджмент организаций и администрирование. C 2012 работаю торговым представителем. Сейчас работаю в одной из самых крупным табачных компаний мира. Честно говоря, всегда хотелось делать что-то по настоящему важное и то, что будет по душе. К моему счастью мой разум не затмен всякой ерундой отвлекающий от реальности и думаю ,что это сподвигло меня искать по настоящему, что то важное для меня! После прочтения книги о Стиве Джобсе, меня осенило, и я захотел стать программистом! Но сначала не понимал в каком направлении хочу двигаться.К счастью пользуясь техникой Apple, все встало на свои места и поэтому я здесь! Очень люблю кататься на сноуборде, заниматься спортом и путешестовать, ах да, у меня появилась любовь к языку SWIFT! Хочу подытожить Я СТАНУ КРУТЫМ IOS РАЗРАБОТЧИКОМ!!!"))
        return modelPerson
    }
}

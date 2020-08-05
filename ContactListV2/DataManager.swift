//
//  DataManager.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

class DataManager {
    
    static let shared = DataManager()
    
    let contactNames = ["John", "Paul", "Andy", "James", "Mike"]
    let contactSurnames = ["Bond", "Pacman", "Belinsky", "Paulsen", "Jordan"]
    
    let contactPhones = ["+7-813-536-74-47",
                         "+3-869-869-92-94",
                         "+3-869-793-01-91",
                         "+8-919-838-84-42",
                         "+5-748-869-23-14"]
    
    let contactEmails = ["dog@gmail.com",
                         "unicorn@yandex.ru",
                         "destroyer@mail.ru",
                         "granny@hotmail.com",
                         "jester24@gmail.com"]
    
}

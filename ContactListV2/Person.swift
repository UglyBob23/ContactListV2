//
//  Person.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons () -> [Person] {
        
        let names = DataManager.shared.contactNames.shuffled()
        let surnames = DataManager.shared.contactSurnames.shuffled()
        let phones = DataManager.shared.contactPhones.shuffled()
        let emails = DataManager.shared.contactEmails.shuffled()
        
        var persons = [Person]()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phone: phones[index])
            
            persons.append(person)
        }
        return persons
    }
}

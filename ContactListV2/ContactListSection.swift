//
//  ContactListSection.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContactListSection: View {
    
    let person: Person
    
    var body: some View {
        
        Section(header: Text(person.fullName)) {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(person.phone)
            }
            HStack {
                Image(systemName: "tray.full")
                    .foregroundColor(.blue)
                Text(person.email)
            }
        }
    }
}

struct ContactListSection_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ContactListSection(person: Person.getPersons()[0])
        }
    }
}

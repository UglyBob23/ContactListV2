//
//  ContactList.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        VStack(spacing: 8) {
            Header(header: "Contacts List")
            List(persons, id: \.name) { person in
                ContactListRow(person: person)
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getPersons())
    }
}

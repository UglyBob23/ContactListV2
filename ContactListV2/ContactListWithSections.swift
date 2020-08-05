//
//  ContactListWithSections.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContactListWithSections: View {
    
    let persons: [Person]
    
    var body: some View {
        VStack(spacing: 8) {
            Header(header: "Persons List")
            List {
                ForEach(persons, id: \.name) { person in
                    ContactListSection(person: person)
                }
            }
        }
    }
}

struct ContactListWithSections_Previews: PreviewProvider {
    static var previews: some View {
        ContactListWithSections(persons: Person.getPersons())
    }
}

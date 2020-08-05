//
//  ContactListRow.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContactListRow: View {
    
    @State private var isPresented = false
    
    let person: Person
    
    var body: some View {
        
        Button(action: { self.isPresented.toggle() }) {
            HStack {
                Text(person.fullName)
                Spacer()
            }
            .sheet(isPresented: $isPresented) {
                ContactDetails(showModal: self.$isPresented, person: self.person)
            }
        }
    }
}

struct ContactListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactListRow(person: Person.getPersons()[0])
    }
}

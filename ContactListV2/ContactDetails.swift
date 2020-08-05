//
//  ContactDetails.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 05.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContactDetails: View {
    
    @Binding var showModal: Bool
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Header(header: person.fullName)
                Spacer()
                Button("Close") {
                    self.showModal = false
                }
                .padding(.trailing)
            }
            Text("Phone: \(person.phone)")
                .padding()
            Text("Email: \(person.email)")
                .padding(.leading)
            Spacer()
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(showModal: .constant(true), person: Person.getPersons()[0])
    }
}

//
//  ContentView.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 04.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
            }
            ContactListWithSections(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

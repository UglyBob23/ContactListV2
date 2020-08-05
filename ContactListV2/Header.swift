//
//  Header.swift
//  ContactListV2
//
//  Created by Владимир Паутов on 05.08.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct Header: View {
    
    let header: String
    
    var body: some View {
        HStack {
            Text(header)
                .bold()
                .font(.largeTitle)
            Spacer()
        }
        .padding([.top, .leading])
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(header: "Contacts")
    }
}

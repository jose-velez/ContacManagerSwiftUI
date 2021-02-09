//
//  CreateNewContact.swift
//  ContactManager
//
//  Created by Jose Velez on 2/9/21.
//

import SwiftUI

struct CreateNewContact: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    Text("Cancel")
                })
                Spacer()
                Text("New Contact")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Done")
                })
            }.padding()
            Spacer()
        }
    }
}

struct CreateNewContact_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewContact()
    }
}

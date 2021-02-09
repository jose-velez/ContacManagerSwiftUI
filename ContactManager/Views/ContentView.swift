//
//  ContentView.swift
//  ContactManager
//
//  Created by Jose Velez on 2/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingDetail = false
    
    var body: some View {
        NavigationView{
            List(persons) { person in
                Text(person.name)
            }
            .navigationBarTitle("Contacts", displayMode: .large)
            .navigationBarItems(trailing: HStack{
                Spacer()
                Button("+") {
                            showingDetail.toggle()
                }.font(.system(size: 50))
                        .sheet(isPresented: $showingDetail) {
                            CreateNewContact()
                        }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


let persons = [Person(id: 1, name: "Jose"),
Person(id: 2, name: "Marie"),
Person(id: 3, name: "Gabriel")]

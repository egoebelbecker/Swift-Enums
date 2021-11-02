//
//  ContentView.swift
//  Swift Enums
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var camelid: Camelid
    
    var body: some View {
        VStack {
            if (camelid.species == "") {
                Text("")
                    .foregroundColor(.blue)
            } else if (camelid.species == "Alpaca") {
                Text("I see an \(camelid.species)")
                    .foregroundColor(.blue)
            } else {
                Text("I see a \(camelid.species)")
                    .foregroundColor(.blue)
            }
            Spacer()
                .frame(height: 50)
            Button("Llama") {
                self.setCamelid(species: "Llama")
            }
            Spacer()
                .frame(height: 50)
            Button("Alpaca") {
                self.setCamelid(species: "Alpaca")
            }
            Spacer()
                .frame(height: 50)
            Button("Camel") {
                self.setCamelid(species: "Camel")
            }
        }
    }
    
    func setCamelid(species: String) {
        camelid.species = species
    }

    func getCamelid() -> String {
        return camelid.species
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(camelid: camelid)
    }
}

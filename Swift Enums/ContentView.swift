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
                    .fixedSize(horizontal: true, vertical: true)
                    .foregroundColor(.blue)
            } else if (camelid.species == "Alpaca") {
                Text("I see an \(camelid.species)")
                    .fixedSize(horizontal: true, vertical: true)
                    .foregroundColor(.blue)
            } else {
                Text("I see a \(camelid.species)")
                    .fixedSize(horizontal: true, vertical: true)
                    .foregroundColor(.blue)
            }
            Spacer()
                .frame(height: 50)
            Button("Llama")
            {
                self.setCamelid(species: "Llama")
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.blue)


            Spacer()
                .frame(height: 50)
            Button("Alpaca")
            {
                self.setCamelid(species: "Alpaca")
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.blue)
            Spacer()
                .frame(height: 50)
            Button("Camel")
            {
                self.setCamelid(species: "Camel")
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(.blue)

        }
    }
    
    func setCamelid(species: String) {
        camelid.species = species
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(camelid: camelid)
    }
}

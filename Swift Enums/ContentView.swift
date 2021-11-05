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
            switch (camelid.species) {
                case .Unknown:
                    Text("")
                        .foregroundColor(.blue)
                case .Alpaca:
                    Text("I see an \(camelid.species.rawValue)")
                        .foregroundColor(.blue)
                default:
                    Text("I see a \(camelid.species.rawValue)")
                        .foregroundColor(.blue)
            }
            Spacer()
                .frame(height: 50)
            Button(CamelidType.Llama.rawValue) {
                self.setCamelid(species: .Llama)
            }
            Spacer()
                .frame(height: 50)
            Button(CamelidType.Alpaca.rawValue) {
                self.setCamelid(species: .Alpaca)
            }
            Spacer()
                .frame(height: 50)
            Button(CamelidType.Camel.rawValue) {
                self.setCamelid(species: .Camel)
            }
        }
    }
    
    func setCamelid(species: CamelidType) {
        camelid.species = species
    }

    func getCamelid() -> CamelidType {
        return camelid.species
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(camelid: camelid)
    }
}

//
//  ContentView.swift
//  Swift Enums
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SwiftUI
import simd

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

            let values: [String] = CamelidType.allCases.map{ $0.rawValue}
            
            ForEach(Array(values.enumerated()), id:\.1) { (n, camelidType) in
                
                if (camelidType != "Unknown") {
                    Spacer()
                        .frame(height: 50)
                    Button(camelidType) {
                        self.setCamelid(species: CamelidType(rawValue: camelidType)!)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.blue)
                }

            }
        }
    }
    
    func setCamelid(species: CamelidType) {
        camelid.species = species
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(camelid: camelid)
    }
}

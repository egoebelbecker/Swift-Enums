//
//  Swift_EnumsApp.swift
//  Swift Enums
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SwiftUI

enum CamelidType: String, CaseIterable {
    case Unknown = "Unknown"
    case Alpaca = "Alpaca"
    case Camel = "Camel"
    case Llama = "Llama"
}

class Camelid: ObservableObject {
    @Published var species: CamelidType = .Unknown
}

var camelid: Camelid = Camelid()


@main
struct Swift_EnumsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(camelid: camelid)
        }
    }
}

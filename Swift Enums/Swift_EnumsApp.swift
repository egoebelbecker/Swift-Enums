//
//  Swift_EnumsApp.swift
//  Swift Enums
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SwiftUI


class Camelid: ObservableObject {
    @Published var species: String = "nothing"
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

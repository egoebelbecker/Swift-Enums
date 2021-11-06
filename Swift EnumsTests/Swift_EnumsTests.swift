//
//  Swift_EnumsTests.swift
//  Swift EnumsTests
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SnapshotTesting
import XCTest
@testable import Swift_Enums

class Swift_EnumsTests: XCTestCase {
    
    var sut: ContentView!
        
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        try super.setUpWithError()
        sut = ContentView(camelid: Camelid())
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        sut = nil
        try super.tearDownWithError()
        
    }
    
    func testLlama() throws {
        // Set a species
        sut.setCamelid(species: .Llama)
                
        // Snap object state
        assertSnapshot(matching: sut, as: .dump)

        // Snap screen contents, compare to saved copy
        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2)
            )
        )
    }

    func testAlpaca() throws {
        sut.setCamelid(species: .Alpaca)
        
        assertSnapshot(matching: sut, as: .dump)
        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2)
            )
        )
    }

    func testCamel() throws {
        sut.setCamelid(species: .Camel)
        
        assertSnapshot(matching: sut, as: .dump)
        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2)
            )
        )
    }

}

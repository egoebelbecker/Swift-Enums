//
//  Swift_EnumsTests.swift
//  Swift EnumsTests
//
//  Created by Eric Goebelbecker on 11/1/21.
//

import SnapshotTesting
import XCTest
@testable import Swift_Enums
import SwiftUI

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
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sut.setCamelid(species: "Llama")
                
        assertSnapshot(matching: sut, as: .dump)
    
        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2) // ← because iPhone Se has display with 2x scale
            )
        )

    }

    func testAlpaca() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sut.setCamelid(species: "Alpaca")
        
        assertSnapshot(matching: sut, as: .dump)

        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2) // ← because iPhone Se has display with 2x scale
            )
        )

        
    }

    func testCamel() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sut.setCamelid(species: "Camel")
        
        assertSnapshot(matching: sut, as: .dump)
        
        assertSnapshot(
            matching: sut,
            as: .image(
                layout: .device(config: .iPhoneSe),
                traits: .init(displayScale: 2) // ← because iPhone Se has display with 2x scale
            )
        )

        
    }

}

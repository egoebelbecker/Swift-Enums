//
//  Swift_EnumsTests.swift
//  Swift EnumsTests
//
//  Created by Eric Goebelbecker on 11/1/21.
//

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

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sut.setCamelid(species: "Llama")
        
        XCTAssertEqual(sut.getCamelid(), "Llama")
  
    }

}

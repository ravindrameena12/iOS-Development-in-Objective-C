//
//  PokemonTests.swift
//  UnitTestingTests
//
//  Created by Vidyashri on 03/10/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import XCTest
@testable import UnitTesting

class PokemonTests: XCTestCase {
    
    var squirtle:Pokemon!
    var charmander:Pokemon!
    var psyduck:Pokemon!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        squirtle = Pokemon(type: .Water, attackType: .Water)
        charmander = Pokemon(type: .Fire, attackType: .Fire)
        psyduck = Pokemon(type: .Water, attackType: .Water)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        squirtle = nil
        charmander = nil
        psyduck = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {  
        squirtle.attack(enemy: charmander)
        squirtle.attack(enemy: psyduck)
        XCTAssertTrue(charmander.health < psyduck.health)
    }

}

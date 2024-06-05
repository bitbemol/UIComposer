//
//  ButtonBuilderTests.swift
//
//
//  Created by Manuel Salazar on 6/4/24.
//
@testable import UIComposer
import XCTest

final class ButtonBuilderTests: XCTestCase {
    
    func testButtonBuilderDefault() {
        let button = ButtonBuilder()
            .build()
        
        XCTAssertEqual(button.translatesAutoresizingMaskIntoConstraints, true)
    }
    
    func testButtonBuilderWithAutoLayout() {
        let button = ButtonBuilder()
            .withAutoLayout()
            .build()
        
        XCTAssertEqual(button.translatesAutoresizingMaskIntoConstraints, false)
    }
    
    func testButtonBuilderWithTitle() {
        let button = ButtonBuilder()
            .withTitle("Tap Me")
            .build()
        
        XCTAssertEqual(button.title(for: .normal), "Tap Me")
    }
    
    func testButtonBuilderWithAction() {
        let expectation = self.expectation(description: "Button action triggered")
        
        let button = ButtonBuilder()
            .withTitle("Tap Me")
            .withAction {
                expectation.fulfill()
            }
            .build()
        
        // Simulate the button tap
        button.sendActions(for: .touchUpInside)
        
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func disable_testButtonBuilderWithStyle() {
        let button = ButtonBuilder()
            .withTitle(for: .normal, "Style")
            .withStyle(.bordered())
            .build()
    }
    
}

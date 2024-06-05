@testable import UIComposer
import XCTest

final class LabelBuilderTests: XCTestCase {

    func testLabelBuilder() {
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Hello World")
            .build()
        
        XCTAssertEqual(label.text, "Hello World")
    }
    
    func testTitleLabelStyle() {
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Title Label")
            .withStyle(.title)
            .build()
        
        XCTAssertEqual(label.text, "Title Label")
        XCTAssertEqual(label.font, UIFont.boldSystemFont(ofSize: 24))
        XCTAssertEqual(label.textColor, UIColor.black)
        XCTAssertEqual(label.backgroundColor, UIColor.clear)
    }
    
    func testSubtitleLabelStyle() {
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Subtitle Label")
            .withStyle(.subtitle)
            .build()
        
        XCTAssertEqual(label.text, "Subtitle Label")
        XCTAssertEqual(label.font, UIFont.systemFont(ofSize: 18))
        XCTAssertEqual(label.textColor, UIColor.darkGray)
        XCTAssertEqual(label.backgroundColor, UIColor.clear)
    }
    
    func testBodyLabelStyle() {
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Body Label")
            .withStyle(.body)
            .build()
        
        XCTAssertEqual(label.text, "Body Label")
        XCTAssertEqual(label.font, UIFont.systemFont(ofSize: 16))
        XCTAssertEqual(label.textColor, UIColor.gray)
        XCTAssertEqual(label.backgroundColor, UIColor.clear)
    }
    
    func testCaptionLabelStyle() {
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Caption Label")
            .withStyle(.caption)
            .build()
        
        XCTAssertEqual(label.text, "Caption Label")
        XCTAssertEqual(label.font, UIFont.systemFont(ofSize: 12))
        XCTAssertEqual(label.textColor, UIColor.lightGray)
        XCTAssertEqual(label.backgroundColor, UIColor.clear)
    }
    
    func testCustomTextColor() {
        let customColor = UIColor.red
        let label = LabelBuilder()
            .withTAMIC(false)
            .withText("Custom Text Color")
            .withTextColor(customColor)
            .build()
        
        XCTAssertEqual(label.text, "Custom Text Color")
        XCTAssertEqual(label.textColor, customColor)
    }
}

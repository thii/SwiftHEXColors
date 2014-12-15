//
//  SwiftColorsTests.swift
//  SwiftColorsExamples
//
//  Created by Evgen Dubinin on 12/16/14.
//
//

#if os(iOS)
    import UIKit
    #else
    import Cocoa
#endif

import XCTest

class SwiftColorsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // is alpha equals to 1 by default after init
    func testAlphaInHexStringInit() {
        let hexBlackColor = SWColor(hexString: "000000")
        XCTAssertNotNil(hexBlackColor)
        var white: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        hexBlackColor!.getWhite(&white, alpha: &alpha)
        let expectedAlpha: CGFloat = 1.0
        XCTAssertEqual(alpha, expectedAlpha)
    }
    
    func testAlphaInHexStringAlphaInit() {
        let hexBlackColor = SWColor(hexString: "000000", alpha: 0.5)
        XCTAssertNotNil(hexBlackColor)
        var white: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        hexBlackColor!.getWhite(&white, alpha: &alpha)
        let expectedAlpha: CGFloat = 0.5
        XCTAssertEqual(alpha, expectedAlpha)
    }
    
    func testBlackColor() {
        let hexBlackColor = SWColor(hexString: "000000")
        XCTAssertNotNil(hexBlackColor)
        let blackColor = SWColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        XCTAssertEqual(hexBlackColor!, blackColor, "Black color mismatch")
    }
    
    // test how Apple might create the black color
    func testBlackColorAppleWay() {
        let blackColor1 = SWColor.blackColor()
        let blackColor2 = SWColor(white: 0.0, alpha: 1.0)
        XCTAssertEqual(blackColor1, blackColor2)
    }
    
    // does # result in correct color
    func testHashColorString() {
        let hexWhiteColor = SWColor(hexString: "#FFFFFF")
        XCTAssertNotNil(hexWhiteColor)
        let whiteColor = SWColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(hexWhiteColor!, whiteColor)
    }
    
    // does string w/ # and w/o # results in same color
    func testWithAndWithoutHash() {
        let colorWithHash = SWColor(hexString: "#490d87")
        XCTAssertNotNil(colorWithHash)
        let colorWithoutHash = SWColor(hexString: "490d87")
        XCTAssertNotNil(colorWithoutHash)
        XCTAssertEqual(colorWithHash!, colorWithoutHash!)
    }
    
    func testIncorrectFormatString() {
        let wrongColor01 = SWColor(hexString: "#incorrect")
        XCTAssertNil(wrongColor01)
        let wrongColor02 = SWColor(hexString: "GGGGGG")
        XCTAssertNil(wrongColor02)
        let wrongColor03 = SWColor(hexString: "-FFFFFF")
        XCTAssertNil(wrongColor03)
        let wrongColor04 = SWColor(hexString: "#FFFFF")
        XCTAssertNil(wrongColor04)
        let wrongColor05 = SWColor(hexString: "#GGG")
        XCTAssertNil(wrongColor05)
        let wrongColor06 = SWColor(hexString: "HHH")
        XCTAssertNil(wrongColor06)
    }
}

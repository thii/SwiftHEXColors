// SwiftHEXColorsTests
//
// Copyright (c) 2014-2016 SwiftHEXColors contributors
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import SwiftHEXColors

class SwiftHEXColorsTests: XCTestCase {

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

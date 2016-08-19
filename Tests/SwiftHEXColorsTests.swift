// SwiftHEXColorsTests
//
// Copyright (c) 2014-2016 Doan Truong Thi
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

private let epsilon: CGFloat = 0.001
private func ~=(c1: SWColor, c2: SWColor) -> Bool {
    var a1: CGFloat = 0.0
    var r1: CGFloat = 0.0
    var g1: CGFloat = 0.0
    var b1: CGFloat = 0.0
    
    c1.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
    
    var a2: CGFloat = 0.0
    var r2: CGFloat = 0.0
    var g2: CGFloat = 0.0
    var b2: CGFloat = 0.0
    
    c2.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
    
    for (c1, c2) in [(r1, r2), (g1, g2), (b1, b2), (a1, a2)] {
        if abs(c1 - c2) >= epsilon {
            return false
        }
    }
    return true
}

class SwiftHEXColorsTests: XCTestCase {
    
    func testThat12bitColorIsInited() {
        let color = SWColor(hexString: "#D4A", alpha: 0.88)
        let expected = SWColor(red: 221.0 / 255.0, green: 68.0 / 255.0, blue: 170.0 / 255.0, alpha: 0.88)
        XCTAssertTrue(color! ~= expected)
    }
    
    func testThat24bitColorIsInited() {
        let color = SWColor(hexString: "#81DAB9", alpha: 0.88)
        let expected = SWColor(red: 129.0 / 255.0, green: 218.0 / 255.0, blue: 185.0 / 255.0, alpha: 0.88)
        XCTAssertTrue(color! ~= expected)
    }
    
    func testThat16bitColorIsNil() {
        let color = SWColor(hexString: "#78A2", alpha: 0.33)
        XCTAssertNil(color)
    }
    
    func testThatNotHexSymbolProducesNil() {
        let color = SWColor(hexString: "#FFF&FF", alpha: 0.88)
        XCTAssertNil(color)
    }
    
    func testThatTooBigIntColorIsNil() {
        let color = SWColor(hex: 0xFFFFFFD, alpha: 0.2)
        XCTAssertNil(color)
    }
    
    func testThatHexIntColorIsInited() {
        let color = SWColor(hex: 0x94D88A, alpha: 0.3)
        let expected = SWColor(red: 148.0 / 255.0, green: 216.0 / 255.0, blue: 138.0 / 255.0, alpha: 0.3)
        XCTAssertTrue(color! ~= expected)
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
        let blackColor1 = SWColor.black
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


    func testInitWithIntValue() {
        let hex = 0x009C17
        XCTAssertNotNil(SWColor(hex: hex))
        XCTAssertEqual(SWColor(hex: hex), SWColor(hexString: "009C17"))
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

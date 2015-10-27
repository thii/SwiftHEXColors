SwiftColors [![Build Status](http://img.shields.io/travis/thii/SwiftColors.svg?style=flat)](https://travis-ci.org/thii/SwiftColors)
===========

HEX color handling as an extension for UIColor. Written in Swift.

## Examples
### iOS
``` swift
// With hash
let color: UIColor = UIColor(hexString: "#ff8942")

// Without hash, with alpha
let secondColor: UIColor = UIColor(hexString: "ff8942", alpha: 0.5)

// Short handling
let shortColorWithHex: UIColor = UIColor(hexString: "fff")
```

For those who don't want to type the double quotation, you can init a color from a real hex value (an `Int`)

```swift
// With hash
let color: UIColor = UIColor(hex: 0xff8942)

// Without hash, with alpha
let secondColor: UIColor = UIColor(hex: 0xff8942, alpha: 0.5)
```

### OSX
``` swift
// With hash
let color: NSColor = NSColor(hexString: "#ff8942")

// Without hash, with alpha
let secondColor: NSColor = NSColor(hexString: "ff8942", alpha: 0.5)

// Short handling
let shortColorWithHex: NSColor = NSColor(hexString: "fff")

// From a real hex value (an `Int`)
// With hash
let color: NSColor = NSColor(hex: 0xff8942)

// Without hash, with alpha
let secondColor: NSColor = NSColor(hex: 0xff8942, alpha: 0.5)
```

## Installation

### CocoaPods

To integrate SwiftColors into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'SwiftColors'
```

Then, run the following command:

```bash
$ pod install
```

And add `import SwiftColors` to the top of the files using SwiftColors.

### Manually
- Drag and drop `SwiftColors.swift` file into your project

# Requirements
iOS 7.0 or above.

# License
[MIT](http://thi.mit-license.org/)

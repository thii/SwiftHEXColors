SwiftColors
===========

[![Build Status](http://img.shields.io/travis/thii/SwiftColors.svg?style=flat)](https://travis-ci.org/thii/SwiftColors)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/SwiftColors.svg)](https://img.shields.io/cocoapods/v/SwiftColors.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/SwiftColors.svg?style=flat)](http://cocoadocs.org/docsets/SwiftColors)
[![License](https://img.shields.io/cocoapods/l/SwiftColors.svg)](https://raw.githubusercontent.com/thii/SwiftColors/master/LICENSE)

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

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate SwiftColors into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "thii/SwiftColors"
```

Run `carthage` to build the framework and drag the built `SwiftColors.framework` into your Xcode project.

### Manually
- Drag and drop `SwiftColors.swift` file into your project

# Requirements
iOS 8.0 or above.

# License
[MIT](http://thi.mit-license.org/)

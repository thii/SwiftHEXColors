SwiftColors [![Build Status](http://img.shields.io/travis/thii/SwiftColors.svg?style=flat)](https://travis-ci.org/thii/SwiftColors)
===========

HEX color handling as an extension for UIColor. Written in Swift.

# Examples
## iOS
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

## OSX
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

# Installation
Just drop the SwiftColors.swift file into your project.

or

## Install using pod

**podfile**
``` 
# Uncomment this line to define a global platform for your project
# platform :ios, '6.0'

target 'RokuRemote' do
    use_frameworks! # Add this if you are targeting iOS 8+ or using Swift
    pod 'SwiftColors'
end

target 'RokuRemoteTests' do
    use_frameworks! # Add this if you are targeting iOS 8+ or using Swift
    pod 'SwiftColors'
end
```

then

``` bash
pod install
```

# Requirements
iOS 7.0 or above.

# License
[MIT](http://thi.mit-license.org/)

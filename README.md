SwiftColors [![Build Status](https://travis-ci.org/thii/SwiftColors.png)](https://travis-ci.org/thii/SwiftColors)
===========

HEX color handling as an extension for UIColor. Written in Swift.

# Examples
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


# Installation
Just drop the SwiftColors.swift file into your project.

# Requirements
iOS 7.0 or above.

# To Do
* [ ] Add support for Mac OS X

# License
[MIT](http://thi.mit-license.org/)

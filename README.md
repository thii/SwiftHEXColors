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

# Installation
Just drop the SwiftColors.swift file into your project.

# Requirements
iOS 7.0 or above.

# To Do
* [ ] Add support for Mac OS X

# License
[MIT](http://thi.mit-license.org/)

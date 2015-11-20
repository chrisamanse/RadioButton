# RadioButton

A radio button UI component for iOS built in Swift.

![RadioButton image](./Images/RadioButton.png)

**`RadioButton`**
  - A subclass of `UIButton`. The radio button circle is simply drawn on top of the button. The size of the circle will fit the frame of the button while maintaining its aspect ratio.

# Installation

This project can be installed in different ways:
  - Manual
    1. Download the project
    2. Simply copy the `RadioButton.swift` to your project
  - Framework
    1. Download the project
    2. Build the **RadioButton** framework
    3. Embed the framework into your project
  - Carthage
    1. Install [Carthage](https://github.com/carthage/carthage) in your system if you don't have it yet
    2. Add a Cartfile in your project directory if you don't have one yet
    3. Then add the line `github "chrisamanse/RadioButton"` in your Cartfile
    4. Run `carthage update`
    5. Follow [Carthage](https://github.com/carthage/carthage) instructions to incorporate the frameworks that Carthage built

# Usage

`RadioButton` can be used in two different ways:
  - Interface Builder
    - Simply change the class of the `UIButton` to `RadioButton`.
  - Code
    - Use the initializer: `init(frame: CGRect)`

You can run the example app located in the same project to see how it's used.

# License

Copyright (c) 2015 Joe Christopher Paul Amanse

This software is distributed under the [MIT License](./LICENSE).

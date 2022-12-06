# Birch

Simple, lightweight remote logging for iOS.

Sign up for your free account at [Birch](https://birch.ryanfung.com).

# Installation

## Using CocoaPods
```ruby
pod 'BirchXCGLogger'
```

## Using Carthage
```ruby
github "gruffins/birch-xcglogger"
```

# Setup

Setup [Birch](https://github.com/gruffins/birch-ios) then add the logger to XCGLogger
```swift
import BirchXCGLogger

let logger = XCGLogger(identifier: "your_identifier", includeDefaultDestinations: false)
logger.add(destination: BirchXCGLogger())
```

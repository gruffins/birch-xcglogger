# Birch
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/BirchXCGLogger.svg)](https://cocoapods.org/pods/BirchXCGLogger)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

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

## Using Swift Package Manager
```
.package(url: "https://github.com/gruffins/birch-xcglogger.git", majorVersion: 1)
```

# Setup

Setup [Birch](https://github.com/gruffins/birch-ios) then add the logger to XCGLogger
```swift
import BirchXCGLogger

let logger = XCGLogger(identifier: "your_identifier", includeDefaultDestinations: false)
logger.add(destination: BirchXCGLogger())
```
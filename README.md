# AFSwiftDateExtension

![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)
![Version](https://img.shields.io/badge/version-0.1.0%20(005)-blue.svg)

NSDate extension that makes easier to operate with NSDate, its built on the top functionalities of SWIFT to give the best experience and safety.

## Features
- Compare dates using common compare operators: >, >=, <, <=
- Get interval between dates using that custom operator >-< 
- Add date components by using aritmethic operators
- Curryed functions

## Requirements
- iOS7 or above
- Swift 1.2

## Usage

### Add/Remove date componets using common plus and minus operator
Thanks to the Int extension is possible to add (or remove) seconds, minutes, hours days, weeks, months and years by simply those commands.
```swift
let date = NSDate()
let dateMinusOneDay = date - 1.days
let datePlustTwoHours = date + 2.hours
```

### Compare Dates
Compare dates using common compare operators: >, >=, <, <=
```swift
let now = NSDate()
let now2 = NSDate()
let answer = now == now2
println("\(answer)") // true

let laterDate = now2 + 1.days
let answer = laterDate! > now
println("\(answer)") // true
        
let earlierDate = now2 - 2.days
let answer2 = earlierDate! < now
println("\(answer2)") // true

```
### Install
Just copy `NSDateSwiftExtension.swift` `file in your project.

### Thanks
Even if I was already working on that extension I must tell the [article](http://codingventures.com/articles/Dating-Swift/)  from Karatal blog has really inspired me

## License 
`AFSwiftDateExtension` is released under MIT license. See LICENSE for details.


//
//  TestVectorStringObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
//

import Foundation


/// A simple object containing a vector of objects that hold a string; for testing only
public struct TestVectorStringObject: Codable, Equatable {

    /// Vector of objects
    public let value: [TestString]


    public init(value: [TestString]) {
        self.value = value
    }
}


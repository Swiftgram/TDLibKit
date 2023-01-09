//
//  TestVectorStringObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-4dc554bd
//  https://github.com/tdlib/td/tree/4dc554bd
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


//
//  TestVectorStringObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// A simple object containing a vector of objects that hold a string; for testing only
public struct TestVectorStringObject: Codable, Equatable, Hashable {

    /// Vector of objects
    public let value: [TestString]


    public init(value: [TestString]) {
        self.value = value
    }
}


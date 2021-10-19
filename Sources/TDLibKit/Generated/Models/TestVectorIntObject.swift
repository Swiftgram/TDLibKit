//
//  TestVectorIntObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// A simple object containing a vector of objects that hold a number; for testing only
public struct TestVectorIntObject: Codable {

    /// Vector of objects
    public let value: [TestInt]


    public init(value: [TestInt]) {
        self.value = value
    }
}


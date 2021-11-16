//
//  TestVectorIntObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
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


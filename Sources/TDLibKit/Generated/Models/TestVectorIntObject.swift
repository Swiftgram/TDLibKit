//
//  TestVectorIntObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-00258ccb
//  https://github.com/tdlib/td/tree/00258ccb
//

import Foundation


/// A simple object containing a vector of objects that hold a number; for testing only
public struct TestVectorIntObject: Codable, Equatable, Hashable {

    /// Vector of objects
    public let value: [TestInt]


    public init(value: [TestInt]) {
        self.value = value
    }
}


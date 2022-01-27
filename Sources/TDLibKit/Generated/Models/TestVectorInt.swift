//
//  TestVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// A simple object containing a vector of numbers; for testing only
public struct TestVectorInt: Codable, Equatable {

    /// Vector of numbers
    public let value: [Int]


    public init(value: [Int]) {
        self.value = value
    }
}


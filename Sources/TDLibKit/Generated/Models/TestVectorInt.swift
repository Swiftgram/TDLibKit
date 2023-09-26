//
//  TestVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-0d16085d
//  https://github.com/tdlib/td/tree/0d16085d
//

import Foundation


/// A simple object containing a vector of numbers; for testing only
public struct TestVectorInt: Codable, Equatable, Hashable {

    /// Vector of numbers
    public let value: [Int]


    public init(value: [Int]) {
        self.value = value
    }
}


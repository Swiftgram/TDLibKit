//
//  TestVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
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


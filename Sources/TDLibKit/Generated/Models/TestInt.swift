//
//  TestInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-1d3cf2c2
//  https://github.com/tdlib/td/tree/1d3cf2c2
//

import Foundation


/// A simple object containing a number; for testing only
public struct TestInt: Codable, Equatable {

    /// Number
    public let value: Int


    public init(value: Int) {
        self.value = value
    }
}


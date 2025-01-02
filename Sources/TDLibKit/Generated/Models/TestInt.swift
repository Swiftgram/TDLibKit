//
//  TestInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// A simple object containing a number; for testing only
public struct TestInt: Codable, Equatable, Hashable {

    /// Number
    public let value: Int


    public init(value: Int) {
        self.value = value
    }
}


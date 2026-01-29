//
//  TestInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
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


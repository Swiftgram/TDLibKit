//
//  TestInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-37647648
//  https://github.com/tdlib/td/tree/37647648
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


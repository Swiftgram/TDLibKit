//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// A simple object containing a string; for testing only
public struct TestString: Codable, Equatable {

    /// String
    public let value: String


    public init(value: String) {
        self.value = value
    }
}


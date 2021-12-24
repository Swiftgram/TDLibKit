//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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


//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-04525f6f
//  https://github.com/tdlib/td/tree/04525f6f
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


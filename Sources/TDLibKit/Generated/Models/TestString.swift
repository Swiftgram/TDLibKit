//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// A simple object containing a string; for testing only
public struct TestString: Codable, Equatable, Hashable {

    /// String
    public let value: String


    public init(value: String) {
        self.value = value
    }
}


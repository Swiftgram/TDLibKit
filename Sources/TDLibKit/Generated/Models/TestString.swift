//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
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


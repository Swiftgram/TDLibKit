//
//  TestString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-1dec0e20
//  https://github.com/tdlib/td/tree/1dec0e20
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


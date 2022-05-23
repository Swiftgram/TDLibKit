//
//  TestVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// A simple object containing a vector of strings; for testing only
public struct TestVectorString: Codable, Equatable {

    /// Vector of strings
    public let value: [String]


    public init(value: [String]) {
        self.value = value
    }
}


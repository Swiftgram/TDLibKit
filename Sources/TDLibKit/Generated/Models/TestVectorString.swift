//
//  TestVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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


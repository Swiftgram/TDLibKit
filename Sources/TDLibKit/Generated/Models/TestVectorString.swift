//
//  TestVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-0d16085d
//  https://github.com/tdlib/td/tree/0d16085d
//

import Foundation


/// A simple object containing a vector of strings; for testing only
public struct TestVectorString: Codable, Equatable, Hashable {

    /// Vector of strings
    public let value: [String]


    public init(value: [String]) {
        self.value = value
    }
}


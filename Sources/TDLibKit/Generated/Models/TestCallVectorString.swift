//
//  TestCallVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorString: Codable, Equatable, Hashable {

    /// Vector of strings to return
    public let x: [String]?


    public init(x: [String]?) {
        self.x = x
    }
}


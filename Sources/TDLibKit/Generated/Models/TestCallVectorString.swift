//
//  TestCallVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
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


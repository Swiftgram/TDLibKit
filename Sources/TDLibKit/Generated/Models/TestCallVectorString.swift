//
//  TestCallVectorString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
//

import Foundation


/// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorString: Codable, Equatable {

    /// Vector of strings to return
    public let x: [String]?


    public init(x: [String]?) {
        self.x = x
    }
}


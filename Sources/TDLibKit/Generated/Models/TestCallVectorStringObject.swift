//
//  TestCallVectorStringObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorStringObject: Codable, Equatable, Hashable {

    /// Vector of objects to return
    public let x: [TestString]?


    public init(x: [TestString]?) {
        self.x = x
    }
}


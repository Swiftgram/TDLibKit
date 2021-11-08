//
//  TestCallVectorIntObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-911c5fc3
//  https://github.com/tdlib/td/tree/911c5fc3
//

import Foundation


/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorIntObject: Codable {

    /// Vector of objects to return
    public let x: [TestInt]?


    public init(x: [TestInt]?) {
        self.x = x
    }
}


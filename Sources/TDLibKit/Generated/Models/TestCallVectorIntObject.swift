//
//  TestCallVectorIntObject.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorIntObject: Codable, Equatable, Hashable {

    /// Vector of objects to return
    public let x: [TestInt]?


    public init(x: [TestInt]?) {
        self.x = x
    }
}


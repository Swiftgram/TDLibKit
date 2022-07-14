//
//  TestCallVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorInt: Codable, Equatable {

    /// Vector of numbers to return
    public let x: [Int]?


    public init(x: [Int]?) {
        self.x = x
    }
}


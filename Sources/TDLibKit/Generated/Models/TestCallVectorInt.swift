//
//  TestCallVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorInt: Codable, Equatable, Hashable {

    /// Vector of numbers to return
    public let x: [Int]?


    public init(x: [Int]?) {
        self.x = x
    }
}


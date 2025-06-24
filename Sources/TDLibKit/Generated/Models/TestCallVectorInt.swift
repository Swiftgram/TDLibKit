//
//  TestCallVectorInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
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


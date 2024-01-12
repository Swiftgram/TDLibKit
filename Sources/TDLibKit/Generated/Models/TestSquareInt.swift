//
//  TestSquareInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-4bafdc2b
//  https://github.com/tdlib/td/tree/4bafdc2b
//

import Foundation


/// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
public struct TestSquareInt: Codable, Equatable, Hashable {

    /// Number to square
    public let x: Int?


    public init(x: Int?) {
        self.x = x
    }
}


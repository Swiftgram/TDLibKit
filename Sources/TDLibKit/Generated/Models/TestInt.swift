//
//  TestInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// A simple object containing a number; for testing only
public struct TestInt: Codable, Equatable, Hashable {

    /// Number
    public let value: Int


    public init(value: Int) {
        self.value = value
    }
}


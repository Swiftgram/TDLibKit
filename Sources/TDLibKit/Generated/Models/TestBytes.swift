//
//  TestBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-bbae7be4
//  https://github.com/tdlib/td/tree/bbae7be4
//

import Foundation


/// A simple object containing a sequence of bytes; for testing only
public struct TestBytes: Codable {

    /// Bytes
    public let value: Data


    public init(value: Data) {
        self.value = value
    }
}


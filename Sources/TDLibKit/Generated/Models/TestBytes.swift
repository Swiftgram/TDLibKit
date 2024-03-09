//
//  TestBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-b1b33cf4
//  https://github.com/tdlib/td/tree/b1b33cf4
//

import Foundation


/// A simple object containing a sequence of bytes; for testing only
public struct TestBytes: Codable, Equatable, Hashable {

    /// Bytes
    public let value: Data


    public init(value: Data) {
        self.value = value
    }
}


//
//  TestBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
//

import Foundation


/// A simple object containing a sequence of bytes; for testing only
public struct TestBytes: Codable, Equatable {

    /// Bytes
    public let value: Data


    public init(value: Data) {
        self.value = value
    }
}


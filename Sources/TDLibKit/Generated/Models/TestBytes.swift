//
//  TestBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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


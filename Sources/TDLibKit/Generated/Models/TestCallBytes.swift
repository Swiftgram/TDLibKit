//
//  TestCallBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
public struct TestCallBytes: Codable, Equatable {

    /// Bytes to return
    public let x: Data?


    public init(x: Data?) {
        self.x = x
    }
}


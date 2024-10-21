//
//  TestCallBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
public struct TestCallBytes: Codable, Equatable, Hashable {

    /// Bytes to return
    public let x: Data?


    public init(x: Data?) {
        self.x = x
    }
}


//
//  TestCallString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Returns the received string; for testing only. This is an offline method. Can be called before authorization
public struct TestCallString: Codable, Equatable, Hashable {

    /// String to return
    public let x: String?


    public init(x: String?) {
        self.x = x
    }
}


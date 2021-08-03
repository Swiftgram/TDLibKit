//
//  TestCallString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns the received string; for testing only. This is an offline method. Can be called before authorization
public struct TestCallString: Codable {

    /// String to return
    public let x: String


    public init(x: String) {
        self.x = x
    }
}


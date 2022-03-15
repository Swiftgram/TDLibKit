//
//  CustomRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Contains the result of a custom request
public struct CustomRequestResult: Codable, Equatable {

    /// A JSON-serialized result
    public let result: String


    public init(result: String) {
        self.result = result
    }
}


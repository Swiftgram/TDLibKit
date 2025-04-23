//
//  CustomRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Contains the result of a custom request
public struct CustomRequestResult: Codable, Equatable, Hashable {

    /// A JSON-serialized result
    public let result: String


    public init(result: String) {
        self.result = result
    }
}


//
//  CustomRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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


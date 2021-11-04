//
//  CustomRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Contains the result of a custom request
public struct CustomRequestResult: Codable {

    /// A JSON-serialized result
    public let result: String


    public init(result: String) {
        self.result = result
    }
}


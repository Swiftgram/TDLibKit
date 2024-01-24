//
//  CustomRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-5bbfc1cf
//  https://github.com/tdlib/td/tree/5bbfc1cf
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


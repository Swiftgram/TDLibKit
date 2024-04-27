//
//  GetJsonString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
public struct GetJsonString: Codable, Equatable, Hashable {

    /// The JsonValue object
    public let jsonValue: JsonValue?


    public init(jsonValue: JsonValue?) {
        self.jsonValue = jsonValue
    }
}


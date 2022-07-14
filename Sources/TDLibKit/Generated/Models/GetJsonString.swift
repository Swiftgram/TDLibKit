//
//  GetJsonString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
//

import Foundation


/// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
public struct GetJsonString: Codable, Equatable {

    /// The JsonValue object
    public let jsonValue: JsonValue?


    public init(jsonValue: JsonValue?) {
        self.jsonValue = jsonValue
    }
}


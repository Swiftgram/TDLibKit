//
//  GetJsonValue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
public struct GetJsonValue: Codable {

    /// The JSON-serialized string
    public let json: String?


    public init(json: String?) {
        self.json = json
    }
}


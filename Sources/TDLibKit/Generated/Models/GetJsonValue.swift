//
//  GetJsonValue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
public struct GetJsonValue: Codable, Equatable, Hashable {

    /// The JSON-serialized string
    public let json: String?


    public init(json: String?) {
        self.json = json
    }
}


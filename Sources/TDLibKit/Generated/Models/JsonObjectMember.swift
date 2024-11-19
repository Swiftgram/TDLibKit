//
//  JsonObjectMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Represents one member of a JSON object
public struct JsonObjectMember: Codable, Equatable, Hashable {

    /// Member's key
    public let key: String

    /// Member's value
    public let value: JsonValue


    public init(
        key: String,
        value: JsonValue
    ) {
        self.key = key
        self.value = value
    }
}


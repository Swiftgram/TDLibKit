//
//  JsonObjectMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Represents one member of a JSON object
public struct JsonObjectMember: Codable {

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


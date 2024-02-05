//
//  JsonObjectMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
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


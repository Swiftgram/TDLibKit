//
//  LanguagePackString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Represents one language pack string
public struct LanguagePackString: Codable, Equatable, Hashable {

    /// String key
    public let key: String

    /// String value; pass null if the string needs to be taken from the built-in English language pack
    public let value: LanguagePackStringValue?


    public init(
        key: String,
        value: LanguagePackStringValue?
    ) {
        self.key = key
        self.value = value
    }
}


//
//  SetCustomLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds or changes a custom local language pack to the current localization target
public struct SetCustomLanguagePack: Codable, Equatable, Hashable {

    /// Information about the language pack. Language pack identifier must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
    public let info: LanguagePackInfo?

    /// Strings of the new language pack
    public let strings: [LanguagePackString]?


    public init(
        info: LanguagePackInfo?,
        strings: [LanguagePackString]?
    ) {
        self.info = info
        self.strings = strings
    }
}


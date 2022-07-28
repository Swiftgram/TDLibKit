//
//  SetCustomLanguagePackString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
public struct SetCustomLanguagePackString: Codable, Equatable {

    /// Identifier of a previously added custom local language pack in the current localization target
    public let languagePackId: String?

    /// New language pack string
    public let newString: LanguagePackString?


    public init(
        languagePackId: String?,
        newString: LanguagePackString?
    ) {
        self.languagePackId = languagePackId
        self.newString = newString
    }
}


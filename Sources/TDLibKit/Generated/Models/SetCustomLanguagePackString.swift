//
//  SetCustomLanguagePackString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
public struct SetCustomLanguagePackString: Codable, Equatable, Hashable {

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


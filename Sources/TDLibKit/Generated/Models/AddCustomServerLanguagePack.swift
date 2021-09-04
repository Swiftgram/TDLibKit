//
//  AddCustomServerLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
public struct AddCustomServerLanguagePack: Codable {

    /// Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
    public let languagePackId: String


    public init(languagePackId: String) {
        self.languagePackId = languagePackId
    }
}

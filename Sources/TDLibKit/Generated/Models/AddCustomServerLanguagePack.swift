//
//  AddCustomServerLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-ca14dfe7
//  https://github.com/tdlib/td/tree/ca14dfe7
//

import Foundation


/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
public struct AddCustomServerLanguagePack: Codable, Equatable {

    /// Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


//
//  AddCustomServerLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
public struct AddCustomServerLanguagePack: Codable, Equatable, Hashable {

    /// Identifier of a language pack to be added
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


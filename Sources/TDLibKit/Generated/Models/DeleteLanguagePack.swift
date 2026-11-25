//
//  DeleteLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Deletes all information about a language pack in the current localization target. The language pack that is currently in use (including the base language pack) or is being synchronized can't be deleted. Can be called before authorization
public struct DeleteLanguagePack: Codable, Equatable, Hashable {

    /// Identifier of the language pack to delete
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


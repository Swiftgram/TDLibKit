//
//  DeleteLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
public struct DeleteLanguagePack: Codable, Equatable, Hashable {

    /// Identifier of the language pack to delete
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


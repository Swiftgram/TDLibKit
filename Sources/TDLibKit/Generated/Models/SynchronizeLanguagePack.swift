//
//  SynchronizeLanguagePack.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the currently used/base language packs. Can be called before authorization
public struct SynchronizeLanguagePack: Codable, Equatable, Hashable {

    /// Language pack identifier
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


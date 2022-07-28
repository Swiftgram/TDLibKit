//
//  GetLanguagePackString.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
public struct GetLanguagePackString: Codable, Equatable {

    /// Language pack key of the string to be returned
    public let key: String?

    /// Path to the language pack database in which strings are stored
    public let languagePackDatabasePath: String?

    /// Language pack identifier
    public let languagePackId: String?

    /// Localization target to which the language pack belongs
    public let localizationTarget: String?


    public init(
        key: String?,
        languagePackDatabasePath: String?,
        languagePackId: String?,
        localizationTarget: String?
    ) {
        self.key = key
        self.languagePackDatabasePath = languagePackDatabasePath
        self.languagePackId = languagePackId
        self.localizationTarget = localizationTarget
    }
}


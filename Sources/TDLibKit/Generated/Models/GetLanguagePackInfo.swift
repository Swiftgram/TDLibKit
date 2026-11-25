//
//  GetLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about a language pack. The returned language pack identifier may be different from the provided one. Can be called before authorization
public struct GetLanguagePackInfo: Codable, Equatable, Hashable {

    /// Language pack identifier
    public let languagePackId: String?


    public init(languagePackId: String?) {
        self.languagePackId = languagePackId
    }
}


//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
//

import Foundation


/// Contains information about the current localization target
public struct LocalizationTargetInfo: Codable, Equatable, Hashable {

    /// List of available language packs for this application
    public let languagePacks: [LanguagePackInfo]


    public init(languagePacks: [LanguagePackInfo]) {
        self.languagePacks = languagePacks
    }
}


//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
//

import Foundation


/// Contains information about the current localization target
public struct LocalizationTargetInfo: Codable, Equatable {

    /// List of available language packs for this application
    public let languagePacks: [LanguagePackInfo]


    public init(languagePacks: [LanguagePackInfo]) {
        self.languagePacks = languagePacks
    }
}


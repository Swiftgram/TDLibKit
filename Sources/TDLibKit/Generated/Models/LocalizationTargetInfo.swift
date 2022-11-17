//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
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


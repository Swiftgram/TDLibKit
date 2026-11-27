//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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


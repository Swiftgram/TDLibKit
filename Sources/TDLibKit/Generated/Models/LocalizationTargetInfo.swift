//
//  LocalizationTargetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
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


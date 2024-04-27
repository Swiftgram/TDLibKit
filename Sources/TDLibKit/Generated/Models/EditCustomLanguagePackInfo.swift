//
//  EditCustomLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Edits information about a custom local language pack in the current localization target. Can be called before authorization
public struct EditCustomLanguagePackInfo: Codable, Equatable, Hashable {

    /// New information about the custom local language pack
    public let info: LanguagePackInfo?


    public init(info: LanguagePackInfo?) {
        self.info = info
    }
}


//
//  EditCustomLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Edits information about a custom local language pack in the current localization target. Can be called before authorization
public struct EditCustomLanguagePackInfo: Codable, Equatable {

    /// New information about the custom local language pack
    public let info: LanguagePackInfo?


    public init(info: LanguagePackInfo?) {
        self.info = info
    }
}


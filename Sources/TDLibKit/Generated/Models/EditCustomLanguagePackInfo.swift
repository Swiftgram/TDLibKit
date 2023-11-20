//
//  EditCustomLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
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


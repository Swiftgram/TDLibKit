//
//  EditCustomLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
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


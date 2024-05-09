//
//  EditCustomLanguagePackInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
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


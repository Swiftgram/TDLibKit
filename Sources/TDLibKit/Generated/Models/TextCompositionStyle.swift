//
//  TextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Describes a style that can be used to compose a text
public struct TextCompositionStyle: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji corresponding to the style
    public let customEmojiId: TdInt64

    /// Name of the style
    public let name: String

    /// Title of the style in the user application's language
    public let title: String


    public init(
        customEmojiId: TdInt64,
        name: String,
        title: String
    ) {
        self.customEmojiId = customEmojiId
        self.name = name
        self.title = title
    }
}


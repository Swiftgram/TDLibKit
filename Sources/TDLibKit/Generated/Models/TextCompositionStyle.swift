//
//  TextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Describes a style that can be used to compose a text
public struct TextCompositionStyle: Codable, Equatable, Hashable {

    /// User identifier of the creator of the style; 0 if none or unknown
    public let creatorUserId: Int64

    /// Identifier of the custom emoji corresponding to the style; 0 if none
    public let customEmojiId: TdInt64

    /// Example of the style usage in English; may be null if unknown
    public let englishExample: TextCompositionStyleExample?

    /// Number of users that installed the style; for created custom styles only; 0 if unknown
    public let installCount: Int

    /// True, if the user is creator of the style
    public let isCreator: Bool

    /// True, if the style is created by a user
    public let isCustom: Bool

    /// Name of the style
    public let name: String

    /// Prompt of the style; for created custom styles only
    public let prompt: String

    /// Title of the style in the user application's language
    public let title: String


    public init(
        creatorUserId: Int64,
        customEmojiId: TdInt64,
        englishExample: TextCompositionStyleExample?,
        installCount: Int,
        isCreator: Bool,
        isCustom: Bool,
        name: String,
        prompt: String,
        title: String
    ) {
        self.creatorUserId = creatorUserId
        self.customEmojiId = customEmojiId
        self.englishExample = englishExample
        self.installCount = installCount
        self.isCreator = isCreator
        self.isCustom = isCustom
        self.name = name
        self.prompt = prompt
        self.title = title
    }
}


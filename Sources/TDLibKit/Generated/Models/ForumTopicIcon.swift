//
//  ForumTopicIcon.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a forum topic icon
public struct ForumTopicIcon: Codable, Equatable, Hashable {

    /// Color of the topic icon in RGB format
    public let color: Int

    /// Unique identifier of the custom emoji shown on the topic icon; 0 if none
    public let customEmojiId: TdInt64


    public init(
        color: Int,
        customEmojiId: TdInt64
    ) {
        self.color = color
        self.customEmojiId = customEmojiId
    }
}


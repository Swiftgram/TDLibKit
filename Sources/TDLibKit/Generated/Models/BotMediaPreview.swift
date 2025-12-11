//
//  BotMediaPreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes media previews of a bot
public struct BotMediaPreview: Codable, Equatable, Hashable {

    /// Content of the preview; may only be of the types storyContentPhoto, storyContentVideo, or storyContentUnsupported
    public let content: StoryContent

    /// Point in time (Unix timestamp) when the preview was added or changed last time
    public let date: Int


    public init(
        content: StoryContent,
        date: Int
    ) {
        self.content = content
        self.date = date
    }
}


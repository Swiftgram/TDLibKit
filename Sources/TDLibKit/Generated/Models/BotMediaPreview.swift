//
//  BotMediaPreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes media previews of a bot
public struct BotMediaPreview: Codable, Equatable, Hashable {

    /// Content of the preview; may only be of the types storyContentPhoto, storyContentVideo, or storyContentUnsupported
    public let content: StoryContent

    /// Point in time (Unix timestamp) when the preview was last added or changed
    public let date: Int


    public init(
        content: StoryContent,
        date: Int
    ) {
        self.content = content
        self.date = date
    }
}


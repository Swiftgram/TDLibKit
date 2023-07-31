//
//  EditStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-6a6cd8af
//  https://github.com/tdlib/td/tree/6a6cd8af
//

import Foundation


/// Changes content and caption of a previously sent story
public struct EditStory: Codable, Equatable, Hashable {

    /// New story caption; pass null to keep the current caption
    public let caption: FormattedText?

    /// New content of the story; pass null to keep the current content
    public let content: InputStoryContent?

    /// Identifier of the story to edit
    public let storyId: Int?


    public init(
        caption: FormattedText?,
        content: InputStoryContent?,
        storyId: Int?
    ) {
        self.caption = caption
        self.content = content
        self.storyId = storyId
    }
}


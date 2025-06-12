//
//  EditStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Changes content and caption of a story. Can be called only if story.can_be_edited == true
public struct EditStory: Codable, Equatable, Hashable {

    /// New clickable rectangle areas to be shown on the story media; pass null to keep the current areas. Areas can't be edited if story content isn't changed
    public let areas: InputStoryAreas?

    /// New story caption; pass null to keep the current caption
    public let caption: FormattedText?

    /// New content of the story; pass null to keep the current content
    public let content: InputStoryContent?

    /// Identifier of the story to edit
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        areas: InputStoryAreas?,
        caption: FormattedText?,
        content: InputStoryContent?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.areas = areas
        self.caption = caption
        self.content = content
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}


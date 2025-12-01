//
//  EditBusinessStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes a story posted by the bot on behalf of a business account; for bots only
public struct EditBusinessStory: Codable, Equatable, Hashable {

    /// New clickable rectangle areas to be shown on the story media
    public let areas: InputStoryAreas?

    /// New story caption
    public let caption: FormattedText?

    /// New content of the story
    public let content: InputStoryContent?

    /// The new privacy settings for the story
    public let privacySettings: StoryPrivacySettings?

    /// Identifier of the story to edit
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        areas: InputStoryAreas?,
        caption: FormattedText?,
        content: InputStoryContent?,
        privacySettings: StoryPrivacySettings?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.areas = areas
        self.caption = caption
        self.content = content
        self.privacySettings = privacySettings
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}


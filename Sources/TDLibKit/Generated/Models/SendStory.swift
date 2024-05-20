//
//  SendStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends a new story to a chat; requires can_post_stories right for supergroup and channel chats. Returns a temporary story
public struct SendStory: Codable, Equatable, Hashable {

    /// Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise
    public let activePeriod: Int?

    /// Clickable rectangle areas to be shown on the story media; pass null if none
    public let areas: InputStoryAreas?

    /// Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters; can have entities only if getOption("can_use_text_entities_in_story_caption")
    public let caption: FormattedText?

    /// Identifier of the chat that will post the story
    public let chatId: Int64?

    /// Content of the story
    public let content: InputStoryContent?

    /// Full identifier of the original story, which content was used to create the story
    public let fromStoryFullId: StoryFullId?

    /// Pass true to keep the story accessible after expiration
    public let isPostedToChatPage: Bool?

    /// The privacy settings for the story; ignored for stories sent to supergroup and channel chats
    public let privacySettings: StoryPrivacySettings?

    /// Pass true if the content of the story must be protected from forwarding and screenshotting
    public let protectContent: Bool?


    public init(
        activePeriod: Int?,
        areas: InputStoryAreas?,
        caption: FormattedText?,
        chatId: Int64?,
        content: InputStoryContent?,
        fromStoryFullId: StoryFullId?,
        isPostedToChatPage: Bool?,
        privacySettings: StoryPrivacySettings?,
        protectContent: Bool?
    ) {
        self.activePeriod = activePeriod
        self.areas = areas
        self.caption = caption
        self.chatId = chatId
        self.content = content
        self.fromStoryFullId = fromStoryFullId
        self.isPostedToChatPage = isPostedToChatPage
        self.privacySettings = privacySettings
        self.protectContent = protectContent
    }
}


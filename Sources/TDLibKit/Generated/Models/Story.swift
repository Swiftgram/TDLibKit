//
//  Story.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a story
public struct Story: Codable, Equatable, Hashable, Identifiable {

    /// Clickable areas to be shown on the story content
    public let areas: [StoryArea]

    /// True, if the story can be deleted
    public let canBeDeleted: Bool

    /// True, if the story can be edited
    public let canBeEdited: Bool

    /// True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden
    public let canBeForwarded: Bool

    /// True, if the story can be replied in the chat with the story sender
    public let canBeReplied: Bool

    /// True, if interactions with the story can be received through getStoryInteractions
    public let canGetInteractions: Bool

    /// True, if the story statistics are available through getStoryStatistics
    public let canGetStatistics: Bool

    /// True, if the story's is_posted_to_chat_page value can be changed
    public let canToggleIsPostedToChatPage: Bool

    /// Caption of the story
    public let caption: FormattedText

    /// Type of the chosen reaction; may be null if none
    public let chosenReactionType: ReactionType?

    /// Content of the story
    public let content: StoryContent

    /// Point in time (Unix timestamp) when the story was published
    public let date: Int

    /// True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago
    public let hasExpiredViewers: Bool

    /// Unique story identifier among stories of the given sender
    public let id: Int

    /// Information about interactions with the story; may be null if the story isn't owned or there were no interactions
    public let interactionInfo: StoryInteractionInfo?

    /// True, if the story is being edited by the current user
    public let isBeingEdited: Bool

    /// True, if the story is being sent by the current user
    public let isBeingSent: Bool

    /// True, if the story was edited
    public let isEdited: Bool

    /// True, if the story is saved in the sender's profile and will be available there after expiration
    public let isPostedToChatPage: Bool

    /// True, if the story is visible only for the current user
    public let isVisibleOnlyForSelf: Bool

    /// Privacy rules affecting story visibility; may be approximate for non-owned stories
    public let privacySettings: StoryPrivacySettings

    /// Information about the original story; may be null if the story wasn't reposted
    public let repostInfo: StoryRepostInfo?

    /// Identifier of the chat that posted the story
    public let senderChatId: Int64

    /// Identifier of the sender of the story; may be null if the story is posted on behalf of the sender_chat_id
    public let senderId: MessageSender?


    public init(
        areas: [StoryArea],
        canBeDeleted: Bool,
        canBeEdited: Bool,
        canBeForwarded: Bool,
        canBeReplied: Bool,
        canGetInteractions: Bool,
        canGetStatistics: Bool,
        canToggleIsPostedToChatPage: Bool,
        caption: FormattedText,
        chosenReactionType: ReactionType?,
        content: StoryContent,
        date: Int,
        hasExpiredViewers: Bool,
        id: Int,
        interactionInfo: StoryInteractionInfo?,
        isBeingEdited: Bool,
        isBeingSent: Bool,
        isEdited: Bool,
        isPostedToChatPage: Bool,
        isVisibleOnlyForSelf: Bool,
        privacySettings: StoryPrivacySettings,
        repostInfo: StoryRepostInfo?,
        senderChatId: Int64,
        senderId: MessageSender?
    ) {
        self.areas = areas
        self.canBeDeleted = canBeDeleted
        self.canBeEdited = canBeEdited
        self.canBeForwarded = canBeForwarded
        self.canBeReplied = canBeReplied
        self.canGetInteractions = canGetInteractions
        self.canGetStatistics = canGetStatistics
        self.canToggleIsPostedToChatPage = canToggleIsPostedToChatPage
        self.caption = caption
        self.chosenReactionType = chosenReactionType
        self.content = content
        self.date = date
        self.hasExpiredViewers = hasExpiredViewers
        self.id = id
        self.interactionInfo = interactionInfo
        self.isBeingEdited = isBeingEdited
        self.isBeingSent = isBeingSent
        self.isEdited = isEdited
        self.isPostedToChatPage = isPostedToChatPage
        self.isVisibleOnlyForSelf = isVisibleOnlyForSelf
        self.privacySettings = privacySettings
        self.repostInfo = repostInfo
        self.senderChatId = senderChatId
        self.senderId = senderId
    }
}


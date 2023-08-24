//
//  SendStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-470c36ce
//  https://github.com/tdlib/td/tree/470c36ce
//

import Foundation


/// Sends a new story. Returns a temporary story
public struct SendStory: Codable, Equatable, Hashable {

    /// Period after which the story is moved to archive, in seconds; must be one of 6 * 3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise
    public let activePeriod: Int?

    /// Clickable rectangle areas to be shown on the story media; pass null if none
    public let areas: InputStoryAreas?

    /// Story caption; pass null to use an empty caption; 0-getOption("story_caption_length_max") characters
    public let caption: FormattedText?

    /// Content of the story
    public let content: InputStoryContent?

    /// Pass true to keep the story accessible after expiration
    public let isPinned: Bool?

    /// The privacy settings for the story
    public let privacySettings: StoryPrivacySettings?

    /// Pass true if the content of the story must be protected from forwarding and screenshotting
    public let protectContent: Bool?


    public init(
        activePeriod: Int?,
        areas: InputStoryAreas?,
        caption: FormattedText?,
        content: InputStoryContent?,
        isPinned: Bool?,
        privacySettings: StoryPrivacySettings?,
        protectContent: Bool?
    ) {
        self.activePeriod = activePeriod
        self.areas = areas
        self.caption = caption
        self.content = content
        self.isPinned = isPinned
        self.privacySettings = privacySettings
        self.protectContent = protectContent
    }
}


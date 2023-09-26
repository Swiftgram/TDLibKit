//
//  SetStoryPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-9b4266c0
//  https://github.com/tdlib/td/tree/9b4266c0
//

import Foundation


/// Changes privacy settings of a story. Can be called only if story.can_be_edited == true
public struct SetStoryPrivacySettings: Codable, Equatable, Hashable {

    /// The new privacy settigs for the story
    public let privacySettings: StoryPrivacySettings?

    /// Identifier of the story
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64?


    public init(
        privacySettings: StoryPrivacySettings?,
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.privacySettings = privacySettings
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}


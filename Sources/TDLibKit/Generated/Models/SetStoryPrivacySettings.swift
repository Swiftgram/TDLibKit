//
//  SetStoryPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Changes privacy settings of a story. The method can be called only for stories posted on behalf of the current user and if story.can_set_privacy_settings == true
public struct SetStoryPrivacySettings: Codable, Equatable, Hashable {

    /// The new privacy settings for the story
    public let privacySettings: StoryPrivacySettings?

    /// Identifier of the story
    public let storyId: Int?


    public init(
        privacySettings: StoryPrivacySettings?,
        storyId: Int?
    ) {
        self.privacySettings = privacySettings
        self.storyId = storyId
    }
}


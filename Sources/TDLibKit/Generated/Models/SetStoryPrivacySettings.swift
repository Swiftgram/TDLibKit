//
//  SetStoryPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
//

import Foundation


/// Changes privacy settings of a story. The method can be called only for stories posted on behalf of the current user and if story.can_be_edited == true
public struct SetStoryPrivacySettings: Codable, Equatable, Hashable {

    /// The new privacy settigs for the story
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


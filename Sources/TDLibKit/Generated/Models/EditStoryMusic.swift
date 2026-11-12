//
//  EditStoryMusic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Changes music attached to a story. Can be called only if story.can_be_edited == true and the story isn't being edited now
public struct EditStoryMusic: Codable, Equatable, Hashable {

    /// The new music; pass null to remove music from the story. The music can be up to 60 seconds long
    public let music: InputAudio?

    /// Identifier of the story to edit
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        music: InputAudio?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.music = music
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}


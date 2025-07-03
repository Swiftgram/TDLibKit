//
//  EditStoryCover.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Changes cover of a video story. Can be called only if story.can_be_edited == true and the story isn't being edited now
public struct EditStoryCover: Codable, Equatable, Hashable {

    /// New timestamp of the frame, which will be used as video thumbnail
    public let coverFrameTimestamp: Double?

    /// Identifier of the story to edit
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        coverFrameTimestamp: Double?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.coverFrameTimestamp = coverFrameTimestamp
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}


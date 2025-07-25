//
//  GetChatStoryInteractions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns interactions with a story posted in a chat. Can be used only if story is posted on behalf of a chat and the user is an administrator in the chat
public struct GetChatStoryInteractions: Codable, Equatable, Hashable {

    /// The maximum number of story interactions to return
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to get forwards and reposts first, then reactions, then other views; pass false to get interactions sorted just by interaction date
    public let preferForwards: Bool?

    /// Pass the default heart reaction or a suggested reaction type to receive only interactions with the specified reaction type; pass null to receive all interactions; reactionTypePaid isn't supported
    public let reactionType: ReactionType?

    /// Story identifier
    public let storyId: Int?

    /// The identifier of the poster of the story
    public let storyPosterChatId: Int64?


    public init(
        limit: Int?,
        offset: String?,
        preferForwards: Bool?,
        reactionType: ReactionType?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.limit = limit
        self.offset = offset
        self.preferForwards = preferForwards
        self.reactionType = reactionType
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}


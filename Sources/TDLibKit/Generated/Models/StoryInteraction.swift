//
//  StoryInteraction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Represents interaction with a story
public struct StoryInteraction: Codable, Equatable, Hashable {

    /// Identifier of the user or chat that made the interaction
    public let actorId: MessageSender

    /// Block list to which the actor is added; may be null if none or for chat stories
    public let blockList: BlockList?

    /// Approximate point in time (Unix timestamp) when the interaction happened
    public let interactionDate: Int

    /// Type of the interaction
    public let type: StoryInteractionType


    public init(
        actorId: MessageSender,
        blockList: BlockList?,
        interactionDate: Int,
        type: StoryInteractionType
    ) {
        self.actorId = actorId
        self.blockList = blockList
        self.interactionDate = interactionDate
        self.type = type
    }
}


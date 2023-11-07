//
//  StoryViewer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Represents a viewer of a story
public struct StoryViewer: Codable, Equatable, Hashable {

    /// Block list to which the user is added; may be null if none
    public let blockList: BlockList?

    /// Type of the reaction that was chosen by the user; may be null if none
    public let chosenReactionType: ReactionType?

    /// User identifier of the viewer
    public let userId: Int64

    /// Approximate point in time (Unix timestamp) when the story was viewed
    public let viewDate: Int


    public init(
        blockList: BlockList?,
        chosenReactionType: ReactionType?,
        userId: Int64,
        viewDate: Int
    ) {
        self.blockList = blockList
        self.chosenReactionType = chosenReactionType
        self.userId = userId
        self.viewDate = viewDate
    }
}


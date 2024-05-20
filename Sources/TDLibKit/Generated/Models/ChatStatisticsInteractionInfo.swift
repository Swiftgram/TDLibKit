//
//  ChatStatisticsInteractionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains statistics about interactions with a message sent in the chat or a story sent by the chat
public struct ChatStatisticsInteractionInfo: Codable, Equatable, Hashable {

    /// Number of times the object was forwarded
    public let forwardCount: Int

    /// Type of the object
    public let objectType: ChatStatisticsObjectType

    /// Number of times reactions were added to the object
    public let reactionCount: Int

    /// Number of times the object was viewed
    public let viewCount: Int


    public init(
        forwardCount: Int,
        objectType: ChatStatisticsObjectType,
        reactionCount: Int,
        viewCount: Int
    ) {
        self.forwardCount = forwardCount
        self.objectType = objectType
        self.reactionCount = reactionCount
        self.viewCount = viewCount
    }
}


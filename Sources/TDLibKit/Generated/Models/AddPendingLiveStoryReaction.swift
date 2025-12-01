//
//  AddPendingLiveStoryReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Adds pending paid reaction in a live story group call. Can't be used in live stories posted by the current user. Call commitPendingLiveStoryReactions or removePendingLiveStoryReactions to actually send all pending reactions when the undo timer is over or abort the sending
public struct AddPendingLiveStoryReaction: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_group_call_message_star_count_max")
    public let starCount: Int64?


    public init(
        groupCallId: Int?,
        starCount: Int64?
    ) {
        self.groupCallId = groupCallId
        self.starCount = starCount
    }
}


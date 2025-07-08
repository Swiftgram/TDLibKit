//
//  BanGroupCallParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Bans users from a group call not bound to a chat; requires groupCall.is_owned. Only the owner of the group call can invite the banned users back
public struct BanGroupCallParticipants: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Identifiers of group call participants to ban; identifiers of unknown users from the update updateGroupCallParticipants can be also passed to the method
    public let userIds: [TdInt64]?


    public init(
        groupCallId: Int?,
        userIds: [TdInt64]?
    ) {
        self.groupCallId = groupCallId
        self.userIds = userIds
    }
}


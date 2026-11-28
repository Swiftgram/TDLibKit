//
//  BanGroupCallParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Bans users from a group call not bound to a chat; requires groupCall.is_owned. Only the owner of the group call can invite the banned users back
public struct BanGroupCallParticipants: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Identifiers of group call participants to ban; identifiers of unknown users from the update updateGroupCallParticipants can also be passed to the method
    public let userIds: [TdInt64]?


    public init(
        groupCallId: Int?,
        userIds: [TdInt64]?
    ) {
        self.groupCallId = groupCallId
        self.userIds = userIds
    }
}


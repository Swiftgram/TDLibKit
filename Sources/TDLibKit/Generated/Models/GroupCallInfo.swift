//
//  GroupCallInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Contains information about a just created or just joined group call
public struct GroupCallInfo: Codable, Equatable, Hashable {

    /// Identifier of the group call
    public let groupCallId: Int

    /// Join response payload for tgcalls; empty if the call isn't joined
    public let joinPayload: String


    public init(
        groupCallId: Int,
        joinPayload: String
    ) {
        self.groupCallId = groupCallId
        self.joinPayload = joinPayload
    }
}


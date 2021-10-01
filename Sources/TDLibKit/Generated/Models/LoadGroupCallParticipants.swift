//
//  LoadGroupCallParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Loads more participants of a group call. The loaded participants will be received through updates. Use the field groupCall.loaded_all_participants to check whether all participants has already been loaded
public struct LoadGroupCallParticipants: Codable {

    /// Group call identifier. The group call must be previously received through getGroupCall and must be joined or being joined
    public let groupCallId: Int

    /// The maximum number of participants to load
    public let limit: Int


    public init(
        groupCallId: Int,
        limit: Int
    ) {
        self.groupCallId = groupCallId
        self.limit = limit
    }
}


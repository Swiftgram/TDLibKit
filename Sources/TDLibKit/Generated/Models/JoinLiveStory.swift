//
//  JoinLiveStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-7a7081bf
//  https://github.com/tdlib/td/tree/7a7081bf
//

import Foundation


/// Joins a group call of an active live story. Returns join response payload for tgcalls
public struct JoinLiveStory: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Parameters to join the call
    public let joinParameters: GroupCallJoinParameters?


    public init(
        groupCallId: Int?,
        joinParameters: GroupCallJoinParameters?
    ) {
        self.groupCallId = groupCallId
        self.joinParameters = joinParameters
    }
}


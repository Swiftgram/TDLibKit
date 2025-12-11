//
//  JoinLiveStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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


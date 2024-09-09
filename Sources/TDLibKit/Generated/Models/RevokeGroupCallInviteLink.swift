//
//  RevokeGroupCallInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
//

import Foundation


/// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
public struct RevokeGroupCallInviteLink: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}


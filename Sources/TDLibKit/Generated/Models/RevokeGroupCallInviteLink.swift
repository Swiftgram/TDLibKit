//
//  RevokeGroupCallInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Revokes invite link for a group call. Requires groupCall.can_be_managed right for video chats or groupCall.is_owned otherwise
public struct RevokeGroupCallInviteLink: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?


    public init(groupCallId: Int?) {
        self.groupCallId = groupCallId
    }
}


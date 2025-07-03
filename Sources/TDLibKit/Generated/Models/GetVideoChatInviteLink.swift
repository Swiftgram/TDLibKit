//
//  GetVideoChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Returns invite link to a video chat in a public chat
public struct GetVideoChatInviteLink: Codable, Equatable, Hashable {

    /// Pass true if the invite link needs to contain an invite hash, passing which to joinVideoChat would allow the invited user to unmute themselves. Requires groupCall.can_be_managed right
    public let canSelfUnmute: Bool?

    /// Group call identifier
    public let groupCallId: Int?


    public init(
        canSelfUnmute: Bool?,
        groupCallId: Int?
    ) {
        self.canSelfUnmute = canSelfUnmute
        self.groupCallId = groupCallId
    }
}


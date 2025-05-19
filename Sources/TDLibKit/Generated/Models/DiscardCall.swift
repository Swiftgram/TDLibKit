//
//  DiscardCall.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Discards a call
public struct DiscardCall: Codable, Equatable, Hashable {

    /// Call identifier
    public let callId: Int?

    /// Identifier of the connection used during the call
    public let connectionId: TdInt64?

    /// The call duration, in seconds
    public let duration: Int?

    /// If the call was upgraded to a group call, pass invite link to the group call
    public let inviteLink: String?

    /// Pass true if the user was disconnected
    public let isDisconnected: Bool?

    /// Pass true if the call was a video call
    public let isVideo: Bool?


    public init(
        callId: Int?,
        connectionId: TdInt64?,
        duration: Int?,
        inviteLink: String?,
        isDisconnected: Bool?,
        isVideo: Bool?
    ) {
        self.callId = callId
        self.connectionId = connectionId
        self.duration = duration
        self.inviteLink = inviteLink
        self.isDisconnected = isDisconnected
        self.isVideo = isVideo
    }
}


//
//  MessageForwardInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a forwarded message
public struct MessageForwardInfo: Codable, Equatable {

    /// Point in time (Unix timestamp) when the message was originally sent
    public let date: Int

    /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown
    public let fromChatId: Int64

    /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown
    public let fromMessageId: Int64

    /// Origin of a forwarded message
    public let origin: MessageForwardOrigin

    /// The type of a public service announcement for the forwarded message
    public let publicServiceAnnouncementType: String


    public init(
        date: Int,
        fromChatId: Int64,
        fromMessageId: Int64,
        origin: MessageForwardOrigin,
        publicServiceAnnouncementType: String
    ) {
        self.date = date
        self.fromChatId = fromChatId
        self.fromMessageId = fromMessageId
        self.origin = origin
        self.publicServiceAnnouncementType = publicServiceAnnouncementType
    }
}


//
//  SetLiveStoryMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Selects a message sender to send messages in a live story call
public struct SetLiveStoryMessageSender: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// New message sender for the group call
    public let messageSenderId: MessageSender?


    public init(
        groupCallId: Int?,
        messageSenderId: MessageSender?
    ) {
        self.groupCallId = groupCallId
        self.messageSenderId = messageSenderId
    }
}


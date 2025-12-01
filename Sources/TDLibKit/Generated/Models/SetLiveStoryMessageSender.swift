//
//  SetLiveStoryMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
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


//
//  SetLiveStoryMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
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


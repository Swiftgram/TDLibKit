//
//  DeleteGroupCallMessagesBySender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Deletes all messages sent by the specified message sender in a group call; for live story calls only. Requires groupCall.can_delete_messages right
public struct DeleteGroupCallMessagesBySender: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true to report the messages as spam
    public let reportSpam: Bool?

    /// Identifier of the sender of messages to delete
    public let senderId: MessageSender?


    public init(
        groupCallId: Int?,
        reportSpam: Bool?,
        senderId: MessageSender?
    ) {
        self.groupCallId = groupCallId
        self.reportSpam = reportSpam
        self.senderId = senderId
    }
}


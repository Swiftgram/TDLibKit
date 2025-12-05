//
//  DeleteGroupCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Deletes messages in a group call; for live story calls only. Requires groupCallMessage.can_be_deleted right
public struct DeleteGroupCallMessages: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Identifiers of the messages to be deleted
    public let messageIds: [Int]?

    /// Pass true to report the messages as spam
    public let reportSpam: Bool?


    public init(
        groupCallId: Int?,
        messageIds: [Int]?,
        reportSpam: Bool?
    ) {
        self.groupCallId = groupCallId
        self.messageIds = messageIds
        self.reportSpam = reportSpam
    }
}


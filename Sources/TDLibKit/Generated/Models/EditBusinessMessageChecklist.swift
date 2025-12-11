//
//  EditBusinessMessageChecklist.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Edits the content of a checklist in a message sent on behalf of a business account; for bots only
public struct EditBusinessMessageChecklist: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which the message was sent
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// The new checklist. If some tasks were completed, this information will be kept
    public let checklist: InputChecklist?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        checklist: InputChecklist?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.checklist = checklist
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}


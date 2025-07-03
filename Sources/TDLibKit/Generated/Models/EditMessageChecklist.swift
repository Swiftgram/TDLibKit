//
//  EditMessageChecklist.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Edits the message content of a checklist. Returns the edited message after the edit is completed on the server side
public struct EditMessageChecklist: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// The new checklist. If some tasks were completed, this information will be kept
    public let checklist: InputChecklist?

    /// Identifier of the message. Use messageProperties.can_be_edited to check whether the message can be edited
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        checklist: InputChecklist?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.checklist = checklist
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}


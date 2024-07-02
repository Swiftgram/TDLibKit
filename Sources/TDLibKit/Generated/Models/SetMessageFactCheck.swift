//
//  SetMessageFactCheck.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// Changes the fact-check of a message. Can be only used if getOption("can_edit_fact_check") == true
public struct SetMessageFactCheck: Codable, Equatable, Hashable {

    /// The channel chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message. The message must be one of the following types: messageAnimation, messageAudio, messageDocument, messagePhoto, messageText, messageVideo
    public let messageId: Int64?

    /// New text of the fact-check; 0-getOption("fact_check_length_max") characters; pass null to remove it. Only Bold, Italic, and TextUrl entities with https://t.me/ links are supported
    public let text: FormattedText?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        text: FormattedText?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.text = text
    }
}


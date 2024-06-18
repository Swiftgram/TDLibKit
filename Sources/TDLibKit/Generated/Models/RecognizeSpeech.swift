//
//  RecognizeSpeech.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Recognizes speech in a video note or a voice note message. The message must be successfully sent, must not be scheduled, and must be from a non-secret chat
public struct RecognizeSpeech: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}


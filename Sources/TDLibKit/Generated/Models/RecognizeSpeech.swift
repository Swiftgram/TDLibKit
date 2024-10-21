//
//  RecognizeSpeech.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Recognizes speech in a video note or a voice note message
public struct RecognizeSpeech: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message. Use messageProperties.can_recognize_speech to check whether the message is suitable
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}


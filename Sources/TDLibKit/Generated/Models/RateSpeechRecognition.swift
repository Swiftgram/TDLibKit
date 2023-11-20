//
//  RateSpeechRecognition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Rates recognized speech in a video note or a voice note message
public struct RateSpeechRecognition: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true if the speech recognition is good
    public let isGood: Bool?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        isGood: Bool?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.isGood = isGood
        self.messageId = messageId
    }
}


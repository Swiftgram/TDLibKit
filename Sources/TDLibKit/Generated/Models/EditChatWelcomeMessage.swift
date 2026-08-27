//
//  EditChatWelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Edits a welcome message of a chat; requires can_send_welcome_messages administrator right in the chat
public struct EditChatWelcomeMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat
    public let chatId: Int64?

    /// New content of the message. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageRichMessage, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote
    public let inputMessageContent: InputMessageContent?

    /// The identifier of the welcome message
    public let welcomeMessageId: Int?


    public init(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        welcomeMessageId: Int?
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.welcomeMessageId = welcomeMessageId
    }
}


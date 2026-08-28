//
//  AddChatWelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Adds a message to the list of welcome messages of a chat; requires can_send_welcome_messages administrator right in the chat. There can be up to getOption("welcome_message_count_max") welcome messages in a chat
public struct AddChatWelcomeMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat
    public let chatId: Int64?

    /// The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageRichMessage, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote, inputMessageLocation, inputMessageVenue, inputMessageContact
    public let inputMessageContent: InputMessageContent?


    public init(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
    }
}


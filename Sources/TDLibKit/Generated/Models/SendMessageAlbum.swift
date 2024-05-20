//
//  SendMessageAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
public struct SendMessageAlbum: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// Contents of messages to be sent. At most 10 messages can be added to an album
    public let inputMessageContents: [InputMessageContent]?

    /// If not 0, the message thread identifier in which the messages will be sent
    public let messageThreadId: Int64?

    /// Options to be used to send the messages; pass null to use default options
    public let options: MessageSendOptions?

    /// Information about the message or story to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        chatId: Int64?,
        inputMessageContents: [InputMessageContent]?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        replyTo: InputMessageReplyTo?
    ) {
        self.chatId = chatId
        self.inputMessageContents = inputMessageContents
        self.messageThreadId = messageThreadId
        self.options = options
        self.replyTo = replyTo
    }
}


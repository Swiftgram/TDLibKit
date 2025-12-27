//
//  SendMessageAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Sends 2-10 messages grouped together into an album. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
public struct SendMessageAlbum: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// Contents of messages to be sent. At most 10 messages can be added to an album. All messages must have the same value of show_caption_above_media
    public let inputMessageContents: [InputMessageContent]?

    /// Options to be used to send the messages; pass null to use default options
    public let options: MessageSendOptions?

    /// Information about the message or story to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?

    /// Topic in which the messages will be sent; pass null if none
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        inputMessageContents: [InputMessageContent]?,
        options: MessageSendOptions?,
        replyTo: InputMessageReplyTo?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.inputMessageContents = inputMessageContents
        self.options = options
        self.replyTo = replyTo
        self.topicId = topicId
    }
}


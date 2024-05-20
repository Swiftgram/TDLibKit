//
//  SendBusinessMessageAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends 2-10 messages grouped together into an album on behalf of a business account; for bots only. Currently, only audio, document, photo and video messages can be grouped into an album. Documents and audio files can be only grouped in an album with messages of the same type. Returns sent messages
public struct SendBusinessMessageAlbum: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request
    public let businessConnectionId: String?

    /// Target chat
    public let chatId: Int64?

    /// Pass true to disable notification for the message
    public let disableNotification: Bool?

    /// Contents of messages to be sent. At most 10 messages can be added to an album
    public let inputMessageContents: [InputMessageContent]?

    /// Pass true if the content of the message must be protected from forwarding and saving
    public let protectContent: Bool?

    /// Information about the message to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        disableNotification: Bool?,
        inputMessageContents: [InputMessageContent]?,
        protectContent: Bool?,
        replyTo: InputMessageReplyTo?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContents = inputMessageContents
        self.protectContent = protectContent
        self.replyTo = replyTo
    }
}


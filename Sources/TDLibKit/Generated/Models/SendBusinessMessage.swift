//
//  SendBusinessMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends a message on behalf of a business account; for bots only. Returns the message after it was sent
public struct SendBusinessMessage: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request
    public let businessConnectionId: String?

    /// Target chat
    public let chatId: Int64?

    /// Pass true to disable notification for the message
    public let disableNotification: Bool?

    /// The content of the message to be sent
    public let inputMessageContent: InputMessageContent?

    /// Pass true if the content of the message must be protected from forwarding and saving
    public let protectContent: Bool?

    /// Markup for replying to the message; pass null if none
    public let replyMarkup: ReplyMarkup?

    /// Information about the message to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        disableNotification: Bool?,
        inputMessageContent: InputMessageContent?,
        protectContent: Bool?,
        replyMarkup: ReplyMarkup?,
        replyTo: InputMessageReplyTo?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.inputMessageContent = inputMessageContent
        self.protectContent = protectContent
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
    }
}


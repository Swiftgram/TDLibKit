//
//  SendBusinessMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
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

    /// Identifier of the effect to apply to the message
    public let effectId: TdInt64?

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
        effectId: TdInt64?,
        inputMessageContent: InputMessageContent?,
        protectContent: Bool?,
        replyMarkup: ReplyMarkup?,
        replyTo: InputMessageReplyTo?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.effectId = effectId
        self.inputMessageContent = inputMessageContent
        self.protectContent = protectContent
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
    }
}


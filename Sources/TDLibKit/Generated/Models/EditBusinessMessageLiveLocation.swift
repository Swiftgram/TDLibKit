//
//  EditBusinessMessageLiveLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Edits the content of a live location in a message sent on behalf of a business account; for bots only
public struct EditBusinessMessageLiveLocation: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which the message was sent
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// New live location of the message; pass null to stop sharing the live location. If the new live_period isn't set to 0x7FFFFFFF, then it must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days
    public let location: LiveLocation?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        location: LiveLocation?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.location = location
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}


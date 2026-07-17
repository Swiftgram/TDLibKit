//
//  EditMessageLiveLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
public struct EditMessageLiveLocation: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// New live location of the message; pass null to stop sharing the live location. If the new live_period isn't set to 0x7FFFFFFF, then it must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days
    public let location: LiveLocation?

    /// Identifier of the message. Use messageProperties.can_be_edited to check whether the message can be edited
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        location: LiveLocation?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.location = location
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}


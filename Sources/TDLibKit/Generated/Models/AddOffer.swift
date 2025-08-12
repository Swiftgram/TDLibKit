//
//  AddOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Sent a suggested post based on a previously sent message in a channel direct messages chat. Can be also used to suggest price or time change for an existing suggested post. Returns the sent message
public struct AddOffer: Codable, Equatable, Hashable {

    /// Identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Identifier of the message in the chat which will be sent as suggested post. Use messageProperties.can_add_offer to check whether an offer can be added or messageProperties.can_edit_suggested_post_info to check whether price or time of sending of the post can be changed
    public let messageId: Int64?

    /// Options to be used to send the message. New information about the suggested post must always be specified
    public let options: MessageSendOptions?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        options: MessageSendOptions?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.options = options
    }
}


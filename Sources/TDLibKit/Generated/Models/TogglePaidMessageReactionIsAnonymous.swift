//
//  TogglePaidMessageReactionIsAnonymous.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Changes whether the paid message reaction of the user to a message is anonymous. The message must have paid reaction added by the user
public struct TogglePaidMessageReactionIsAnonymous: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
    public let isAnonymous: Bool?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        isAnonymous: Bool?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.isAnonymous = isAnonymous
        self.messageId = messageId
    }
}


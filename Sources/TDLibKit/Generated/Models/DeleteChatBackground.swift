//
//  DeleteChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Deletes background in a specific chat
public struct DeleteChatBackground: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true to restore previously set background. Can be used only in private and secret chats with non-deleted users if userFullInfo.set_chat_background == true. Supposed to be used from messageChatSetBackground messages with the currently set background that was set for both sides by the other user
    public let restorePrevious: Bool?


    public init(
        chatId: Int64?,
        restorePrevious: Bool?
    ) {
        self.chatId = chatId
        self.restorePrevious = restorePrevious
    }
}


//
//  ToggleChatGiftNotifications.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Toggles whether notifications for new gifts received by a channel chat are sent to the current user; requires can_post_messages administrator right in the chat
public struct ToggleChatGiftNotifications: Codable, Equatable, Hashable {

    /// Pass true to enable notifications about new gifts owned by the channel chat; pass false to disable the notifications
    public let areEnabled: Bool?

    /// Identifier of the channel chat
    public let chatId: Int64?


    public init(
        areEnabled: Bool?,
        chatId: Int64?
    ) {
        self.areEnabled = areEnabled
        self.chatId = chatId
    }
}


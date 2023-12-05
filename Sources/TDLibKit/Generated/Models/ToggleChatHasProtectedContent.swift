//
//  ToggleChatHasProtectedContent.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Changes the ability of users to save, forward, or copy chat content. Supported only for basic groups, supergroups and channels. Requires owner privileges
public struct ToggleChatHasProtectedContent: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New value of has_protected_content
    public let hasProtectedContent: Bool?


    public init(
        chatId: Int64?,
        hasProtectedContent: Bool?
    ) {
        self.chatId = chatId
        self.hasProtectedContent = hasProtectedContent
    }
}


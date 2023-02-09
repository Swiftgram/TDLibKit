//
//  SetChatTitle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
public struct SetChatTitle: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New title of the chat; 1-128 characters
    public let title: String?


    public init(
        chatId: Int64?,
        title: String?
    ) {
        self.chatId = chatId
        self.title = title
    }
}


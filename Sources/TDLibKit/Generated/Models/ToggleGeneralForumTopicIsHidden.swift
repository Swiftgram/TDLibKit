//
//  ToggleGeneralForumTopicIsHidden.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup
public struct ToggleGeneralForumTopicIsHidden: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Pass true to hide and close the General topic; pass false to unhide it
    public let isHidden: Bool?


    public init(
        chatId: Int64?,
        isHidden: Bool?
    ) {
        self.chatId = chatId
        self.isHidden = isHidden
    }
}


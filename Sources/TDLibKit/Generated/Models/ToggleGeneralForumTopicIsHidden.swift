//
//  ToggleGeneralForumTopicIsHidden.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-87d88107
//  https://github.com/tdlib/td/tree/87d88107
//

import Foundation


/// Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics right in the supergroup
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


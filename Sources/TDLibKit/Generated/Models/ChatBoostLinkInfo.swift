//
//  ChatBoostLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Contains information about a link to boost a chat
public struct ChatBoostLinkInfo: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the link points; 0 if the chat isn't found
    public let chatId: Int64

    /// True, if the link will work for non-members of the chat
    public let isPublic: Bool


    public init(
        chatId: Int64,
        isPublic: Bool
    ) {
        self.chatId = chatId
        self.isPublic = isPublic
    }
}


//
//  ChatBoostLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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


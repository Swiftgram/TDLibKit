//
//  ToggleGiftIsSaved.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Toggles whether a gift is shown on the current user's profile page
public struct ToggleGiftIsSaved: Codable, Equatable, Hashable {

    /// Pass true to display the gift on the user's profile page; pass false to remove it from the profile page
    public let isSaved: Bool?

    /// Identifier of the message with the gift in the chat with the user
    public let messageId: Int64?

    /// Identifier of the user that sent the gift
    public let senderUserId: Int64?


    public init(
        isSaved: Bool?,
        messageId: Int64?,
        senderUserId: Int64?
    ) {
        self.isSaved = isSaved
        self.messageId = messageId
        self.senderUserId = senderUserId
    }
}


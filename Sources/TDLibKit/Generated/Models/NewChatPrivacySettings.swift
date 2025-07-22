//
//  NewChatPrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Contains privacy settings for chats with non-contacts
public struct NewChatPrivacySettings: Codable, Equatable, Hashable {

    /// True, if non-contacts users are able to write first to the current user. Telegram Premium subscribers are able to write first regardless of this setting
    public let allowNewChatsFromUnknownUsers: Bool

    /// Number of Telegram Stars that must be paid for every incoming private message by non-contacts; 0-getOption("paid_message_star_count_max"). If positive, then allow_new_chats_from_unknown_users must be true. The current user will receive getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for message sending. Can be positive, only if getOption("can_enable_paid_messages") is true
    public let incomingPaidMessageStarCount: Int64


    public init(
        allowNewChatsFromUnknownUsers: Bool,
        incomingPaidMessageStarCount: Int64
    ) {
        self.allowNewChatsFromUnknownUsers = allowNewChatsFromUnknownUsers
        self.incomingPaidMessageStarCount = incomingPaidMessageStarCount
    }
}


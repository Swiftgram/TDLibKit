//
//  ReadDatePrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains privacy settings for message read date in private chats. Read dates are always shown to the users that can see online status of the current user regardless of this setting
public struct ReadDatePrivacySettings: Codable, Equatable, Hashable {

    /// True, if message read date is shown to other users in private chats. If false and the current user isn't a Telegram Premium user, then they will not be able to see other's message read date.
    public let showReadDate: Bool


    public init(showReadDate: Bool) {
        self.showReadDate = showReadDate
    }
}


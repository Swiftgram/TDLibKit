//
//  ReadDatePrivacySettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains privacy settings for message read date in private chats. Read dates are always shown to the users who can see the online status of the current user regardless of this setting
public struct ReadDatePrivacySettings: Codable, Equatable, Hashable {

    /// True, if the message read date is shown to other users in private chats. If false and the current user isn't a Telegram Premium user, then they will not be able to see others' message read date
    public let showReadDate: Bool


    public init(showReadDate: Bool) {
        self.showReadDate = showReadDate
    }
}


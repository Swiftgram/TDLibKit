//
//  BusinessGreetingMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes settings for greeting messages that are automatically sent by a Telegram Business account as response to incoming messages in an inactive private chat
public struct BusinessGreetingMessageSettings: Codable, Equatable, Hashable {

    /// The number of days after which a chat will be considered as inactive; currently, must be on of 7, 14, 21, or 28
    public let inactivityDays: Int

    /// Chosen recipients of the greeting messages
    public let recipients: BusinessRecipients

    /// Unique quick reply shortcut identifier for the greeting messages
    public let shortcutId: Int


    public init(
        inactivityDays: Int,
        recipients: BusinessRecipients,
        shortcutId: Int
    ) {
        self.inactivityDays = inactivityDays
        self.recipients = recipients
        self.shortcutId = shortcutId
    }
}


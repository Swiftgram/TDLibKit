//
//  BusinessAwayMessageSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes settings for messages that are automatically sent by a Telegram Business account when it is away
public struct BusinessAwayMessageSettings: Codable, Equatable, Hashable {

    /// True, if the messages must not be sent if the account was online in the last 10 minutes
    public let offlineOnly: Bool

    /// Chosen recipients of the away messages
    public let recipients: BusinessRecipients

    /// Settings used to check whether the current user is away
    public let schedule: BusinessAwayMessageSchedule

    /// Unique quick reply shortcut identifier for the away messages
    public let shortcutId: Int


    public init(
        offlineOnly: Bool,
        recipients: BusinessRecipients,
        schedule: BusinessAwayMessageSchedule,
        shortcutId: Int
    ) {
        self.offlineOnly = offlineOnly
        self.recipients = recipients
        self.schedule = schedule
        self.shortcutId = shortcutId
    }
}


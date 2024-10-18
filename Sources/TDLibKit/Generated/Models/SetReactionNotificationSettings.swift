//
//  SetReactionNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Changes notification settings for reactions
public struct SetReactionNotificationSettings: Codable, Equatable, Hashable {

    /// The new notification settings for reactions
    public let notificationSettings: ReactionNotificationSettings?


    public init(notificationSettings: ReactionNotificationSettings?) {
        self.notificationSettings = notificationSettings
    }
}


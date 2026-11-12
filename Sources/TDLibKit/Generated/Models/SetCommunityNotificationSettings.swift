//
//  SetCommunityNotificationSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Changes notification settings of a community
public struct SetCommunityNotificationSettings: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// New notification settings for the community
    public let notificationSettings: ChatNotificationSettings?


    public init(
        communityId: Int64?,
        notificationSettings: ChatNotificationSettings?
    ) {
        self.communityId = communityId
        self.notificationSettings = notificationSettings
    }
}


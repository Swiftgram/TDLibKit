//
//  NotificationSounds.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-4041ecb5
//  https://github.com/tdlib/td/tree/4041ecb5
//

import Foundation


/// Contains a list of notification sounds
public struct NotificationSounds: Codable, Equatable {

    /// A list of notification sounds
    public let notificationSounds: [NotificationSound]


    public init(notificationSounds: [NotificationSound]) {
        self.notificationSounds = notificationSounds
    }
}


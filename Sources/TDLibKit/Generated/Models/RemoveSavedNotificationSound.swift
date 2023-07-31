//
//  RemoveSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-6a6cd8af
//  https://github.com/tdlib/td/tree/6a6cd8af
//

import Foundation


/// Removes a notification sound from the list of saved notification sounds
public struct RemoveSavedNotificationSound: Codable, Equatable, Hashable {

    /// Identifier of the notification sound
    public let notificationSoundId: TdInt64?


    public init(notificationSoundId: TdInt64?) {
        self.notificationSoundId = notificationSoundId
    }
}


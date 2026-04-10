//
//  RemoveSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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


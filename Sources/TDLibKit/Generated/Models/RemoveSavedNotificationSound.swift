//
//  RemoveSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Removes a notification sound from the list of saved notification sounds
public struct RemoveSavedNotificationSound: Codable, Equatable {

    /// Identifier of the notification sound
    public let notificationSoundId: TdInt64?


    public init(notificationSoundId: TdInt64?) {
        self.notificationSoundId = notificationSoundId
    }
}


//
//  GetSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-f441415d
//  https://github.com/tdlib/td/tree/f441415d
//

import Foundation


/// Returns saved notification sound by its identifier. Returns a 404 error if there is no saved notification sound with the specified identifier
public struct GetSavedNotificationSound: Codable, Equatable, Hashable {

    /// Identifier of the notification sound
    public let notificationSoundId: TdInt64?


    public init(notificationSoundId: TdInt64?) {
        self.notificationSoundId = notificationSoundId
    }
}


//
//  AddSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Adds a new notification sound to the list of saved notification sounds. The new notification sound is added to the top of the list. If it is already in the list, its position isn't changed
public struct AddSavedNotificationSound: Codable, Equatable {

    /// Notification sound file to add
    public let sound: InputFile?


    public init(sound: InputFile?) {
        self.sound = sound
    }
}


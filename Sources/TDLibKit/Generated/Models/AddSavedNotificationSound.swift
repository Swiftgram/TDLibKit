//
//  AddSavedNotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Adds a new notification sound to the list of saved notification sounds. The new notification sound is added to the top of the list. If it is already in the list, its position isn't changed
public struct AddSavedNotificationSound: Codable, Equatable, Hashable {

    /// Notification sound file to add
    public let sound: InputFile?


    public init(sound: InputFile?) {
        self.sound = sound
    }
}


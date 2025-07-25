//
//  NotificationSound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a notification sound in MP3 format
public struct NotificationSound: Codable, Equatable, Hashable, Identifiable {

    /// Arbitrary data, defined while the sound was uploaded
    public let data: String

    /// Point in time (Unix timestamp) when the sound was created
    public let date: Int

    /// Duration of the sound, in seconds
    public let duration: Int

    /// Unique identifier of the notification sound
    public let id: TdInt64

    /// File containing the sound
    public let sound: File

    /// Title of the notification sound
    public let title: String


    public init(
        data: String,
        date: Int,
        duration: Int,
        id: TdInt64,
        sound: File,
        title: String
    ) {
        self.data = data
        self.date = date
        self.duration = duration
        self.id = id
        self.sound = sound
        self.title = title
    }
}


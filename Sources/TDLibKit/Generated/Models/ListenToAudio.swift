//
//  ListenToAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Informs TDLib that an audio file was listened to by the user
public struct ListenToAudio: Codable, Equatable, Hashable {

    /// Identifier of the file with the audio
    public let audioFileId: Int?

    /// Duration of listening to the audio, in seconds
    public let duration: Int?


    public init(
        audioFileId: Int?,
        duration: Int?
    ) {
        self.audioFileId = audioFileId
        self.duration = duration
    }
}


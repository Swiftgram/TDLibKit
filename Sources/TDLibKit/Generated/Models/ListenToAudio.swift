//
//  ListenToAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Informs TDLib that an audio was listened by the user
public struct ListenToAudio: Codable, Equatable, Hashable {

    /// Identifier of the file with an audio
    public let audioFileId: Int?

    /// Duration of the listening to the audio, in seconds
    public let duration: Int?


    public init(
        audioFileId: Int?,
        duration: Int?
    ) {
        self.audioFileId = audioFileId
        self.duration = duration
    }
}


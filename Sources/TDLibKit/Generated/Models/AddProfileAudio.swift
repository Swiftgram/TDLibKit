//
//  AddProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Adds an audio file to the beginning of the profile audio files of the current user
public struct AddProfileAudio: Codable, Equatable, Hashable {

    /// The audio file to be added
    public let audio: InputFile?

    /// Duration of the audio, in seconds; may be replaced by the server; ignored for already uploaded files
    public let duration: Int?

    /// Performer of the audio; 0-64 characters, may be replaced by the server; ignored for already uploaded files
    public let performer: String?

    /// Title of the audio; 0-64 characters; may be replaced by the server; ignored for already uploaded files
    public let title: String?


    public init(
        audio: InputFile?,
        duration: Int?,
        performer: String?,
        title: String?
    ) {
        self.audio = audio
        self.duration = duration
        self.performer = performer
        self.title = title
    }
}


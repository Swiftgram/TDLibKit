//
//  AddProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Adds an audio file to the beginning of the profile audio files of the current user
public struct AddProfileAudio: Codable, Equatable, Hashable {

    /// The audio to add
    public let audio: InputAudio?


    public init(audio: InputAudio?) {
        self.audio = audio
    }
}


//
//  IsProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
//

import Foundation


/// Checks whether a file is in the profile audio files of the current user. Returns a 404 error if it isn't
public struct IsProfileAudio: Codable, Equatable, Hashable {

    /// Identifier of the audio file to check
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}


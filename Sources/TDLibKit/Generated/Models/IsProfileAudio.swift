//
//  IsProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
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


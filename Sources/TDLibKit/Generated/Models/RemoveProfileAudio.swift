//
//  RemoveProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Removes an audio file from the profile audio files of the current user
public struct RemoveProfileAudio: Codable, Equatable, Hashable {

    /// Identifier of the audio file to be removed
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}


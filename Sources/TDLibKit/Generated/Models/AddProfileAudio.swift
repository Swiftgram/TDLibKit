//
//  AddProfileAudio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Adds an audio file to the beginning of the profile audio files of the current user
public struct AddProfileAudio: Codable, Equatable, Hashable {

    /// Identifier of the audio file to be added. The file must have been uploaded to the server
    public let fileId: Int?


    public init(fileId: Int?) {
        self.fileId = fileId
    }
}


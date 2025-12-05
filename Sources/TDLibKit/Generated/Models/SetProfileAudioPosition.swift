//
//  SetProfileAudioPosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Changes position of an audio file in the profile audio files of the current user
public struct SetProfileAudioPosition: Codable, Equatable, Hashable {

    /// Identifier of the file from profile audio files after which the file will be positioned; pass 0 to move the file to the beginning of the list
    public let afterFileId: Int?

    /// Identifier of the file from profile audio files, which position will be changed
    public let fileId: Int?


    public init(
        afterFileId: Int?,
        fileId: Int?
    ) {
        self.afterFileId = afterFileId
        self.fileId = fileId
    }
}


//
//  InputRichMessageMedia.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes a media to be used in a sent rich message
public struct InputRichMessageMedia: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the media; 1-64 base64url characters
    public let id: String

    /// The media to send. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessagePhoto, inputMessageVideo, or inputMessageVoiceNote
    public let media: InputMessageContent


    public init(
        id: String,
        media: InputMessageContent
    ) {
        self.id = id
        self.media = media
    }
}


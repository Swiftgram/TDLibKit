//
//  Audio.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes an audio file. Audio is usually in MP3 or M4A format
public struct Audio: Codable, Equatable {

    /// The minithumbnail of the album cover; may be null
    public let albumCoverMinithumbnail: Minithumbnail?

    /// The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded file; may be null
    public let albumCoverThumbnail: Thumbnail?

    /// File containing the audio
    public let audio: File

    /// Duration of the audio, in seconds; as defined by the sender
    public let duration: Int

    /// Original name of the file; as defined by the sender
    public let fileName: String

    /// The MIME type of the file; as defined by the sender
    public let mimeType: String

    /// Performer of the audio; as defined by the sender
    public let performer: String

    /// Title of the audio; as defined by the sender
    public let title: String


    public init(
        albumCoverMinithumbnail: Minithumbnail?,
        albumCoverThumbnail: Thumbnail?,
        audio: File,
        duration: Int,
        fileName: String,
        mimeType: String,
        performer: String,
        title: String
    ) {
        self.albumCoverMinithumbnail = albumCoverMinithumbnail
        self.albumCoverThumbnail = albumCoverThumbnail
        self.audio = audio
        self.duration = duration
        self.fileName = fileName
        self.mimeType = mimeType
        self.performer = performer
        self.title = title
    }
}


//
//  VideoNote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format
public struct VideoNote: Codable, Equatable {

    /// Duration of the video, in seconds; as defined by the sender
    public let duration: Int

    /// Video width and height; as defined by the sender
    public let length: Int

    /// Video minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Video thumbnail in JPEG format; as defined by the sender; may be null
    public let thumbnail: Thumbnail?

    /// File containing the video
    public let video: File


    public init(
        duration: Int,
        length: Int,
        minithumbnail: Minithumbnail?,
        thumbnail: Thumbnail?,
        video: File
    ) {
        self.duration = duration
        self.length = length
        self.minithumbnail = minithumbnail
        self.thumbnail = thumbnail
        self.video = video
    }
}


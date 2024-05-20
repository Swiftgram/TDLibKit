//
//  StoryVideo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a video file sent in a story
public struct StoryVideo: Codable, Equatable, Hashable {

    /// Duration of the video, in seconds
    public let duration: Double

    /// True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
    public let hasStickers: Bool

    /// Video height
    public let height: Int

    /// True, if the video has no sound
    public let isAnimation: Bool

    /// Video minithumbnail; may be null
    public let minithumbnail: Minithumbnail?

    /// Size of file prefix, which is supposed to be preloaded, in bytes
    public let preloadPrefixSize: Int

    /// Video thumbnail in JPEG or MPEG4 format; may be null
    public let thumbnail: Thumbnail?

    /// File containing the video
    public let video: File

    /// Video width
    public let width: Int


    public init(
        duration: Double,
        hasStickers: Bool,
        height: Int,
        isAnimation: Bool,
        minithumbnail: Minithumbnail?,
        preloadPrefixSize: Int,
        thumbnail: Thumbnail?,
        video: File,
        width: Int
    ) {
        self.duration = duration
        self.hasStickers = hasStickers
        self.height = height
        self.isAnimation = isAnimation
        self.minithumbnail = minithumbnail
        self.preloadPrefixSize = preloadPrefixSize
        self.thumbnail = thumbnail
        self.video = video
        self.width = width
    }
}


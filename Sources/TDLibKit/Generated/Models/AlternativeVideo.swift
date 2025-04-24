//
//  AlternativeVideo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Describes an alternative re-encoded quality of a video file
public struct AlternativeVideo: Codable, Equatable, Hashable, Identifiable {

    /// Codec used for video file encoding, for example, "h264", "h265", or "av1"
    public let codec: String

    /// Video height
    public let height: Int

    /// HLS file describing the video
    public let hlsFile: File

    /// Unique identifier of the alternative video, which is used in the HLS file
    public let id: TdInt64

    /// File containing the video
    public let video: File

    /// Video width
    public let width: Int


    public init(
        codec: String,
        height: Int,
        hlsFile: File,
        id: TdInt64,
        video: File,
        width: Int
    ) {
        self.codec = codec
        self.height = height
        self.hlsFile = hlsFile
        self.id = id
        self.video = video
        self.width = width
    }
}


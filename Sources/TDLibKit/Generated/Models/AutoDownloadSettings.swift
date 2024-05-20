//
//  AutoDownloadSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains auto-download settings
public struct AutoDownloadSettings: Codable, Equatable, Hashable {

    /// True, if the auto-download is enabled
    public let isAutoDownloadEnabled: Bool

    /// The maximum size of other file types to be auto-downloaded, in bytes
    public let maxOtherFileSize: Int64

    /// The maximum size of a photo file to be auto-downloaded, in bytes
    public let maxPhotoFileSize: Int

    /// The maximum size of a video file to be auto-downloaded, in bytes
    public let maxVideoFileSize: Int64

    /// True, if the beginning of video files needs to be preloaded for instant playback
    public let preloadLargeVideos: Bool

    /// True, if the next audio track needs to be preloaded while the user is listening to an audio file
    public let preloadNextAudio: Bool

    /// True, if stories needs to be preloaded
    public let preloadStories: Bool

    /// True, if "use less data for calls" option needs to be enabled
    public let useLessDataForCalls: Bool

    /// The maximum suggested bitrate for uploaded videos, in kbit/s
    public let videoUploadBitrate: Int


    public init(
        isAutoDownloadEnabled: Bool,
        maxOtherFileSize: Int64,
        maxPhotoFileSize: Int,
        maxVideoFileSize: Int64,
        preloadLargeVideos: Bool,
        preloadNextAudio: Bool,
        preloadStories: Bool,
        useLessDataForCalls: Bool,
        videoUploadBitrate: Int
    ) {
        self.isAutoDownloadEnabled = isAutoDownloadEnabled
        self.maxOtherFileSize = maxOtherFileSize
        self.maxPhotoFileSize = maxPhotoFileSize
        self.maxVideoFileSize = maxVideoFileSize
        self.preloadLargeVideos = preloadLargeVideos
        self.preloadNextAudio = preloadNextAudio
        self.preloadStories = preloadStories
        self.useLessDataForCalls = useLessDataForCalls
        self.videoUploadBitrate = videoUploadBitrate
    }
}


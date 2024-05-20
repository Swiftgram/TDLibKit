//
//  GetGroupCallStreamSegment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video
public struct GetGroupCallStreamSegment: Codable, Equatable, Hashable {

    /// Identifier of an audio/video channel to get as received from tgcalls
    public let channelId: Int?

    /// Group call identifier
    public let groupCallId: Int?

    /// Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
    public let scale: Int?

    /// Point in time when the stream segment begins; Unix timestamp in milliseconds
    public let timeOffset: Int64?

    /// Video quality as received from tgcalls; pass null to get the worst available quality
    public let videoQuality: GroupCallVideoQuality?


    public init(
        channelId: Int?,
        groupCallId: Int?,
        scale: Int?,
        timeOffset: Int64?,
        videoQuality: GroupCallVideoQuality?
    ) {
        self.channelId = channelId
        self.groupCallId = groupCallId
        self.scale = scale
        self.timeOffset = timeOffset
        self.videoQuality = videoQuality
    }
}


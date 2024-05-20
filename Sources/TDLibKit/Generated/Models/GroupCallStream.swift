//
//  GroupCallStream.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an available stream in a group call
public struct GroupCallStream: Codable, Equatable, Hashable {

    /// Identifier of an audio/video channel
    public let channelId: Int

    /// Scale of segment durations in the stream. The duration is 1000/(2**scale) milliseconds
    public let scale: Int

    /// Point in time when the stream currently ends; Unix timestamp in milliseconds
    public let timeOffset: Int64


    public init(
        channelId: Int,
        scale: Int,
        timeOffset: Int64
    ) {
        self.channelId = channelId
        self.scale = scale
        self.timeOffset = timeOffset
    }
}


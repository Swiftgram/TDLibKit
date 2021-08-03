//
//  GetGroupCallStreamSegment.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns a file with a segment of a group call stream in a modified OGG format
public struct GetGroupCallStreamSegment: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
    public let scale: Int

    /// Point in time when the stream segment begins; Unix timestamp in milliseconds
    public let timeOffset: Int64


    public init(
        groupCallId: Int,
        scale: Int,
        timeOffset: Int64
    ) {
        self.groupCallId = groupCallId
        self.scale = scale
        self.timeOffset = timeOffset
    }
}


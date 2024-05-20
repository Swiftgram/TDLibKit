//
//  GroupCallParticipantVideoInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a group call participant's video channel
public struct GroupCallParticipantVideoInfo: Codable, Equatable, Hashable {

    /// Video channel endpoint identifier
    public let endpointId: String

    /// True, if the video is paused. This flag needs to be ignored, if new video frames are received
    public let isPaused: Bool

    /// List of synchronization source groups of the video
    public let sourceGroups: [GroupCallVideoSourceGroup]


    public init(
        endpointId: String,
        isPaused: Bool,
        sourceGroups: [GroupCallVideoSourceGroup]
    ) {
        self.endpointId = endpointId
        self.isPaused = isPaused
        self.sourceGroups = sourceGroups
    }
}


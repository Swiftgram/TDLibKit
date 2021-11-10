//
//  GroupCallParticipantVideoInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Contains information about a group call participant's video channel
public struct GroupCallParticipantVideoInfo: Codable {

    /// Video channel endpoint identifier
    public let endpointId: String

    /// True if the video is paused. This flag needs to be ignored, if new video frames are received
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


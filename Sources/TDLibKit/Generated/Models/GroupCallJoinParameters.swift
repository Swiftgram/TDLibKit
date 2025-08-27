//
//  GroupCallJoinParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Describes parameters used to join a group call
public struct GroupCallJoinParameters: Codable, Equatable, Hashable {

    /// Audio channel synchronization source identifier; received from tgcalls
    public let audioSourceId: Int

    /// Pass true to join the call with muted microphone
    public let isMuted: Bool

    /// Pass true if the user's video is enabled
    public let isMyVideoEnabled: Bool

    /// Group call join payload; received from tgcalls
    public let payload: String


    public init(
        audioSourceId: Int,
        isMuted: Bool,
        isMyVideoEnabled: Bool,
        payload: String
    ) {
        self.audioSourceId = audioSourceId
        self.isMuted = isMuted
        self.isMyVideoEnabled = isMyVideoEnabled
        self.payload = payload
    }
}


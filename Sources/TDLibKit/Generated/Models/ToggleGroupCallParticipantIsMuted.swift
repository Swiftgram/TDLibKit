//
//  ToggleGroupCallParticipantIsMuted.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
public struct ToggleGroupCallParticipantIsMuted: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true to mute the user; pass false to unmute them
    public let isMuted: Bool?

    /// Participant identifier
    public let participantId: MessageSender?


    public init(
        groupCallId: Int?,
        isMuted: Bool?,
        participantId: MessageSender?
    ) {
        self.groupCallId = groupCallId
        self.isMuted = isMuted
        self.participantId = participantId
    }
}


//
//  ToggleGroupCallParticipantIsMuted.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
public struct ToggleGroupCallParticipantIsMuted: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true to mute the user; pass false to unmute the them
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


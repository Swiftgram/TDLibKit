//
//  ToggleGroupCallParticipantIsMuted.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-858078d8
//  https://github.com/tdlib/td/tree/858078d8
//

import Foundation


/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
public struct ToggleGroupCallParticipantIsMuted: Codable, Equatable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the user must be muted and false otherwise
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


//
//  SetGroupCallParticipantVolumeLevel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level
public struct SetGroupCallParticipantVolumeLevel: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Participant identifier
    public let participantId: MessageSender?

    /// New participant's volume level; 1-20000 in hundreds of percents
    public let volumeLevel: Int?


    public init(
        groupCallId: Int?,
        participantId: MessageSender?,
        volumeLevel: Int?
    ) {
        self.groupCallId = groupCallId
        self.participantId = participantId
        self.volumeLevel = volumeLevel
    }
}


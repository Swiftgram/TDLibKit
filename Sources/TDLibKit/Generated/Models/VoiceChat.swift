//
//  VoiceChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Describes a voice chat
public struct VoiceChat: Codable {

    /// Default group call participant identifier to join the voice chat; may be null
    public let defaultParticipantId: MessageSender?

    /// Group call identifier of an active voice chat; 0 if none. Full informationa about the voice chat can be received through the method getGroupCall
    public let groupCallId: Int

    /// True, if the voice chat has participants
    public let hasParticipants: Bool


    public init(
        defaultParticipantId: MessageSender?,
        groupCallId: Int,
        hasParticipants: Bool
    ) {
        self.defaultParticipantId = defaultParticipantId
        self.groupCallId = groupCallId
        self.hasParticipants = hasParticipants
    }
}


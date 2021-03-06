//
//  VoiceChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Describes a voice chat
public struct VoiceChat: Codable {

    /// Default group call participant identifier to join the voice chat; may be null
    public let defaultParticipantId: MessageSender?

    /// Group call identifier of an active voice chat; 0 if none. Full information about the voice chat can be received through the method getGroupCall
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


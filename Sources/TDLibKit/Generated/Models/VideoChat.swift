//
//  VideoChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a video chat, i.e. a group call bound to a chat
public struct VideoChat: Codable, Equatable, Hashable {

    /// Default group call participant identifier to join the video chat; may be null
    public let defaultParticipantId: MessageSender?

    /// Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall
    public let groupCallId: Int

    /// True, if the video chat has participants
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


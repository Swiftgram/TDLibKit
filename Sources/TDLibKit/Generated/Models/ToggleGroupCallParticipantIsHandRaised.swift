//
//  ToggleGroupCallParticipantIsHandRaised.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Toggles whether a group call participant's hand is raised; for video chats only
public struct ToggleGroupCallParticipantIsHandRaised: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the user's hand needs to be raised. Only the user's own hand can be raised. Requires groupCall.can_be_managed right to lower other users' hands
    public let isHandRaised: Bool?

    /// Participant identifier
    public let participantId: MessageSender?


    public init(
        groupCallId: Int?,
        isHandRaised: Bool?,
        participantId: MessageSender?
    ) {
        self.groupCallId = groupCallId
        self.isHandRaised = isHandRaised
        self.participantId = participantId
    }
}


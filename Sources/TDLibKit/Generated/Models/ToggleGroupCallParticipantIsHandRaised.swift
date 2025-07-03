//
//  ToggleGroupCallParticipantIsHandRaised.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-bb474a20
//  https://github.com/tdlib/td/tree/bb474a20
//

import Foundation


/// Toggles whether a group call participant hand is rased; for video chats only
public struct ToggleGroupCallParticipantIsHandRaised: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed right to lower other's hand
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


//
//  InviteGroupCallParticipantResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes result of group call participant invitation
public indirect enum InviteGroupCallParticipantResult: Codable, Equatable, Hashable {

    /// The user can't be invited due to their privacy settings
    case inviteGroupCallParticipantResultUserPrivacyRestricted

    /// The user can't be invited because they are already a participant of the call
    case inviteGroupCallParticipantResultUserAlreadyParticipant

    /// The user can't be invited because they were banned by the owner of the call and can be invited back only by the owner of the group call
    case inviteGroupCallParticipantResultUserWasBanned

    /// The user was invited and a service message of the type messageGroupCall was sent which can be used in declineGroupCallInvitation to cancel the invitation
    case inviteGroupCallParticipantResultSuccess(InviteGroupCallParticipantResultSuccess)


    private enum Kind: String, Codable {
        case inviteGroupCallParticipantResultUserPrivacyRestricted
        case inviteGroupCallParticipantResultUserAlreadyParticipant
        case inviteGroupCallParticipantResultUserWasBanned
        case inviteGroupCallParticipantResultSuccess
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inviteGroupCallParticipantResultUserPrivacyRestricted:
            self = .inviteGroupCallParticipantResultUserPrivacyRestricted
        case .inviteGroupCallParticipantResultUserAlreadyParticipant:
            self = .inviteGroupCallParticipantResultUserAlreadyParticipant
        case .inviteGroupCallParticipantResultUserWasBanned:
            self = .inviteGroupCallParticipantResultUserWasBanned
        case .inviteGroupCallParticipantResultSuccess:
            let value = try InviteGroupCallParticipantResultSuccess(from: decoder)
            self = .inviteGroupCallParticipantResultSuccess(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inviteGroupCallParticipantResultUserPrivacyRestricted:
            try container.encode(Kind.inviteGroupCallParticipantResultUserPrivacyRestricted, forKey: .type)
        case .inviteGroupCallParticipantResultUserAlreadyParticipant:
            try container.encode(Kind.inviteGroupCallParticipantResultUserAlreadyParticipant, forKey: .type)
        case .inviteGroupCallParticipantResultUserWasBanned:
            try container.encode(Kind.inviteGroupCallParticipantResultUserWasBanned, forKey: .type)
        case .inviteGroupCallParticipantResultSuccess(let value):
            try container.encode(Kind.inviteGroupCallParticipantResultSuccess, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user was invited and a service message of the type messageGroupCall was sent which can be used in declineGroupCallInvitation to cancel the invitation
public struct InviteGroupCallParticipantResultSuccess: Codable, Equatable, Hashable {

    /// Identifier of the chat with the invitation message
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}


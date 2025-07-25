//
//  UserPrivacySetting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes available user privacy settings
public indirect enum UserPrivacySetting: Codable, Equatable, Hashable {

    /// A privacy setting for managing whether the user's online status is visible
    case userPrivacySettingShowStatus

    /// A privacy setting for managing whether the user's profile photo is visible
    case userPrivacySettingShowProfilePhoto

    /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
    case userPrivacySettingShowLinkInForwardedMessages

    /// A privacy setting for managing whether the user's phone number is visible
    case userPrivacySettingShowPhoneNumber

    /// A privacy setting for managing whether the user's bio is visible
    case userPrivacySettingShowBio

    /// A privacy setting for managing whether the user's birthdate is visible
    case userPrivacySettingShowBirthdate

    /// A privacy setting for managing whether the user can be invited to chats
    case userPrivacySettingAllowChatInvites

    /// A privacy setting for managing whether the user can be called
    case userPrivacySettingAllowCalls

    /// A privacy setting for managing whether peer-to-peer connections can be used for calls
    case userPrivacySettingAllowPeerToPeerCalls

    /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
    case userPrivacySettingAllowFindingByPhoneNumber

    /// A privacy setting for managing whether the user can receive voice and video messages in private chats; for Telegram Premium users only
    case userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages

    /// A privacy setting for managing whether received gifts are automatically shown on the user's profile page
    case userPrivacySettingAutosaveGifts

    /// A privacy setting for managing whether the user can receive messages without additional payment
    case userPrivacySettingAllowUnpaidMessages


    private enum Kind: String, Codable {
        case userPrivacySettingShowStatus
        case userPrivacySettingShowProfilePhoto
        case userPrivacySettingShowLinkInForwardedMessages
        case userPrivacySettingShowPhoneNumber
        case userPrivacySettingShowBio
        case userPrivacySettingShowBirthdate
        case userPrivacySettingAllowChatInvites
        case userPrivacySettingAllowCalls
        case userPrivacySettingAllowPeerToPeerCalls
        case userPrivacySettingAllowFindingByPhoneNumber
        case userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
        case userPrivacySettingAutosaveGifts
        case userPrivacySettingAllowUnpaidMessages
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingShowStatus:
            self = .userPrivacySettingShowStatus
        case .userPrivacySettingShowProfilePhoto:
            self = .userPrivacySettingShowProfilePhoto
        case .userPrivacySettingShowLinkInForwardedMessages:
            self = .userPrivacySettingShowLinkInForwardedMessages
        case .userPrivacySettingShowPhoneNumber:
            self = .userPrivacySettingShowPhoneNumber
        case .userPrivacySettingShowBio:
            self = .userPrivacySettingShowBio
        case .userPrivacySettingShowBirthdate:
            self = .userPrivacySettingShowBirthdate
        case .userPrivacySettingAllowChatInvites:
            self = .userPrivacySettingAllowChatInvites
        case .userPrivacySettingAllowCalls:
            self = .userPrivacySettingAllowCalls
        case .userPrivacySettingAllowPeerToPeerCalls:
            self = .userPrivacySettingAllowPeerToPeerCalls
        case .userPrivacySettingAllowFindingByPhoneNumber:
            self = .userPrivacySettingAllowFindingByPhoneNumber
        case .userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages:
            self = .userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
        case .userPrivacySettingAutosaveGifts:
            self = .userPrivacySettingAutosaveGifts
        case .userPrivacySettingAllowUnpaidMessages:
            self = .userPrivacySettingAllowUnpaidMessages
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userPrivacySettingShowStatus:
            try container.encode(Kind.userPrivacySettingShowStatus, forKey: .type)
        case .userPrivacySettingShowProfilePhoto:
            try container.encode(Kind.userPrivacySettingShowProfilePhoto, forKey: .type)
        case .userPrivacySettingShowLinkInForwardedMessages:
            try container.encode(Kind.userPrivacySettingShowLinkInForwardedMessages, forKey: .type)
        case .userPrivacySettingShowPhoneNumber:
            try container.encode(Kind.userPrivacySettingShowPhoneNumber, forKey: .type)
        case .userPrivacySettingShowBio:
            try container.encode(Kind.userPrivacySettingShowBio, forKey: .type)
        case .userPrivacySettingShowBirthdate:
            try container.encode(Kind.userPrivacySettingShowBirthdate, forKey: .type)
        case .userPrivacySettingAllowChatInvites:
            try container.encode(Kind.userPrivacySettingAllowChatInvites, forKey: .type)
        case .userPrivacySettingAllowCalls:
            try container.encode(Kind.userPrivacySettingAllowCalls, forKey: .type)
        case .userPrivacySettingAllowPeerToPeerCalls:
            try container.encode(Kind.userPrivacySettingAllowPeerToPeerCalls, forKey: .type)
        case .userPrivacySettingAllowFindingByPhoneNumber:
            try container.encode(Kind.userPrivacySettingAllowFindingByPhoneNumber, forKey: .type)
        case .userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages:
            try container.encode(Kind.userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages, forKey: .type)
        case .userPrivacySettingAutosaveGifts:
            try container.encode(Kind.userPrivacySettingAutosaveGifts, forKey: .type)
        case .userPrivacySettingAllowUnpaidMessages:
            try container.encode(Kind.userPrivacySettingAllowUnpaidMessages, forKey: .type)
        }
    }
}


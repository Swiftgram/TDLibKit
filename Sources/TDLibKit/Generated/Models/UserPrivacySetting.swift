//
//  UserPrivacySetting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes available user privacy settings
public enum UserPrivacySetting: Codable, Equatable {

    /// A privacy setting for managing whether the user's online status is visible
    case userPrivacySettingShowStatus

    /// A privacy setting for managing whether the user's profile photo is visible
    case userPrivacySettingShowProfilePhoto

    /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
    case userPrivacySettingShowLinkInForwardedMessages

    /// A privacy setting for managing whether the user's phone number is visible
    case userPrivacySettingShowPhoneNumber

    /// A privacy setting for managing whether the user can be invited to chats
    case userPrivacySettingAllowChatInvites

    /// A privacy setting for managing whether the user can be called
    case userPrivacySettingAllowCalls

    /// A privacy setting for managing whether peer-to-peer connections can be used for calls
    case userPrivacySettingAllowPeerToPeerCalls

    /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
    case userPrivacySettingAllowFindingByPhoneNumber


    private enum Kind: String, Codable {
        case userPrivacySettingShowStatus
        case userPrivacySettingShowProfilePhoto
        case userPrivacySettingShowLinkInForwardedMessages
        case userPrivacySettingShowPhoneNumber
        case userPrivacySettingAllowChatInvites
        case userPrivacySettingAllowCalls
        case userPrivacySettingAllowPeerToPeerCalls
        case userPrivacySettingAllowFindingByPhoneNumber
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
        case .userPrivacySettingAllowChatInvites:
            self = .userPrivacySettingAllowChatInvites
        case .userPrivacySettingAllowCalls:
            self = .userPrivacySettingAllowCalls
        case .userPrivacySettingAllowPeerToPeerCalls:
            self = .userPrivacySettingAllowPeerToPeerCalls
        case .userPrivacySettingAllowFindingByPhoneNumber:
            self = .userPrivacySettingAllowFindingByPhoneNumber
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
        case .userPrivacySettingAllowChatInvites:
            try container.encode(Kind.userPrivacySettingAllowChatInvites, forKey: .type)
        case .userPrivacySettingAllowCalls:
            try container.encode(Kind.userPrivacySettingAllowCalls, forKey: .type)
        case .userPrivacySettingAllowPeerToPeerCalls:
            try container.encode(Kind.userPrivacySettingAllowPeerToPeerCalls, forKey: .type)
        case .userPrivacySettingAllowFindingByPhoneNumber:
            try container.encode(Kind.userPrivacySettingAllowFindingByPhoneNumber, forKey: .type)
        }
    }
}


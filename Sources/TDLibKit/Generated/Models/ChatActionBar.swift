//
//  ChatActionBar.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes actions which must be possible to do through a chat action bar
public indirect enum ChatActionBar: Codable, Equatable, Hashable {

    /// The chat can be reported as spam using the method reportChat with the reason reportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
    case chatActionBarReportSpam(ChatActionBarReportSpam)

    /// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason reportReasonUnrelatedLocation
    case chatActionBarReportUnrelatedLocation

    /// The chat is a recently created group chat to which new members can be invited
    case chatActionBarInviteMembers

    /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method setMessageSenderBlockList, or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
    case chatActionBarReportAddBlock(ChatActionBarReportAddBlock)

    /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
    case chatActionBarAddContact

    /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
    case chatActionBarSharePhoneNumber

    /// The chat is a private chat with an administrator of a chat to which the user sent join request
    case chatActionBarJoinRequest(ChatActionBarJoinRequest)


    private enum Kind: String, Codable {
        case chatActionBarReportSpam
        case chatActionBarReportUnrelatedLocation
        case chatActionBarInviteMembers
        case chatActionBarReportAddBlock
        case chatActionBarAddContact
        case chatActionBarSharePhoneNumber
        case chatActionBarJoinRequest
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatActionBarReportSpam:
            let value = try ChatActionBarReportSpam(from: decoder)
            self = .chatActionBarReportSpam(value)
        case .chatActionBarReportUnrelatedLocation:
            self = .chatActionBarReportUnrelatedLocation
        case .chatActionBarInviteMembers:
            self = .chatActionBarInviteMembers
        case .chatActionBarReportAddBlock:
            let value = try ChatActionBarReportAddBlock(from: decoder)
            self = .chatActionBarReportAddBlock(value)
        case .chatActionBarAddContact:
            self = .chatActionBarAddContact
        case .chatActionBarSharePhoneNumber:
            self = .chatActionBarSharePhoneNumber
        case .chatActionBarJoinRequest:
            let value = try ChatActionBarJoinRequest(from: decoder)
            self = .chatActionBarJoinRequest(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatActionBarReportSpam(let value):
            try container.encode(Kind.chatActionBarReportSpam, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionBarReportUnrelatedLocation:
            try container.encode(Kind.chatActionBarReportUnrelatedLocation, forKey: .type)
        case .chatActionBarInviteMembers:
            try container.encode(Kind.chatActionBarInviteMembers, forKey: .type)
        case .chatActionBarReportAddBlock(let value):
            try container.encode(Kind.chatActionBarReportAddBlock, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionBarAddContact:
            try container.encode(Kind.chatActionBarAddContact, forKey: .type)
        case .chatActionBarSharePhoneNumber:
            try container.encode(Kind.chatActionBarSharePhoneNumber, forKey: .type)
        case .chatActionBarJoinRequest(let value):
            try container.encode(Kind.chatActionBarJoinRequest, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The chat can be reported as spam using the method reportChat with the reason reportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
public struct ChatActionBarReportSpam: Codable, Equatable, Hashable {

    /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
    public let canUnarchive: Bool


    public init(canUnarchive: Bool) {
        self.canUnarchive = canUnarchive
    }
}

/// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method setMessageSenderBlockList, or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown
public struct ChatActionBarReportAddBlock: Codable, Equatable, Hashable {

    /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
    public let canUnarchive: Bool

    /// If non-negative, the current user was found by the other user through searchChatsNearby and this is the distance between the users
    public let distance: Int


    public init(
        canUnarchive: Bool,
        distance: Int
    ) {
        self.canUnarchive = canUnarchive
        self.distance = distance
    }
}

/// The chat is a private chat with an administrator of a chat to which the user sent join request
public struct ChatActionBarJoinRequest: Codable, Equatable, Hashable {

    /// True, if the join request was sent to a channel chat
    public let isChannel: Bool

    /// Point in time (Unix timestamp) when the join request was sent
    public let requestDate: Int

    /// Title of the chat to which the join request was sent
    public let title: String


    public init(
        isChannel: Bool,
        requestDate: Int,
        title: String
    ) {
        self.isChannel = isChannel
        self.requestDate = requestDate
        self.title = title
    }
}


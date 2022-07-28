//
//  ChatPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes actions that a user is allowed to take in a chat
public struct ChatPermissions: Codable, Equatable {

    /// True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
    public let canAddWebPagePreviews: Bool

    /// True, if the user can change the chat title, photo, and other settings
    public let canChangeInfo: Bool

    /// True, if the user can invite new users to the chat
    public let canInviteUsers: Bool

    /// True, if the user can pin messages
    public let canPinMessages: Bool

    /// True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
    public let canSendMediaMessages: Bool

    /// True, if the user can send text messages, contacts, locations, and venues
    public let canSendMessages: Bool

    /// True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
    public let canSendOtherMessages: Bool

    /// True, if the user can send polls. Implies can_send_messages permissions
    public let canSendPolls: Bool


    public init(
        canAddWebPagePreviews: Bool,
        canChangeInfo: Bool,
        canInviteUsers: Bool,
        canPinMessages: Bool,
        canSendMediaMessages: Bool,
        canSendMessages: Bool,
        canSendOtherMessages: Bool,
        canSendPolls: Bool
    ) {
        self.canAddWebPagePreviews = canAddWebPagePreviews
        self.canChangeInfo = canChangeInfo
        self.canInviteUsers = canInviteUsers
        self.canPinMessages = canPinMessages
        self.canSendMediaMessages = canSendMediaMessages
        self.canSendMessages = canSendMessages
        self.canSendOtherMessages = canSendOtherMessages
        self.canSendPolls = canSendPolls
    }
}


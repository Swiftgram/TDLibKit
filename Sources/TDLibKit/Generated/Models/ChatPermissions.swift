//
//  ChatPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes actions that a user is allowed to take in a chat
public struct ChatPermissions: Codable, Equatable, Hashable {

    /// True, if the user may add a web page preview to their messages
    public let canAddWebPagePreviews: Bool

    /// True, if the user can change the chat title, photo, and other settings
    public let canChangeInfo: Bool

    /// True, if the user can create topics
    public let canCreateTopics: Bool

    /// True, if the user can invite new users to the chat
    public let canInviteUsers: Bool

    /// True, if the user can pin messages
    public let canPinMessages: Bool

    /// True, if the user can send music files
    public let canSendAudios: Bool

    /// True, if the user can send text messages, contacts, giveaways, giveaway winners, invoices, locations, and venues
    public let canSendBasicMessages: Bool

    /// True, if the user can send documents
    public let canSendDocuments: Bool

    /// True, if the user can send animations, games, stickers, and dice and use inline bots
    public let canSendOtherMessages: Bool

    /// True, if the user can send photos
    public let canSendPhotos: Bool

    /// True, if the user can send polls
    public let canSendPolls: Bool

    /// True, if the user can send video notes
    public let canSendVideoNotes: Bool

    /// True, if the user can send videos
    public let canSendVideos: Bool

    /// True, if the user can send voice notes
    public let canSendVoiceNotes: Bool


    public init(
        canAddWebPagePreviews: Bool,
        canChangeInfo: Bool,
        canCreateTopics: Bool,
        canInviteUsers: Bool,
        canPinMessages: Bool,
        canSendAudios: Bool,
        canSendBasicMessages: Bool,
        canSendDocuments: Bool,
        canSendOtherMessages: Bool,
        canSendPhotos: Bool,
        canSendPolls: Bool,
        canSendVideoNotes: Bool,
        canSendVideos: Bool,
        canSendVoiceNotes: Bool
    ) {
        self.canAddWebPagePreviews = canAddWebPagePreviews
        self.canChangeInfo = canChangeInfo
        self.canCreateTopics = canCreateTopics
        self.canInviteUsers = canInviteUsers
        self.canPinMessages = canPinMessages
        self.canSendAudios = canSendAudios
        self.canSendBasicMessages = canSendBasicMessages
        self.canSendDocuments = canSendDocuments
        self.canSendOtherMessages = canSendOtherMessages
        self.canSendPhotos = canSendPhotos
        self.canSendPolls = canSendPolls
        self.canSendVideoNotes = canSendVideoNotes
        self.canSendVideos = canSendVideos
        self.canSendVoiceNotes = canSendVoiceNotes
    }
}


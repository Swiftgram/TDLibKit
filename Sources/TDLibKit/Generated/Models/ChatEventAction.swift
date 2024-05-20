//
//  ChatEventAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a chat event
public indirect enum ChatEventAction: Codable, Equatable, Hashable {

    /// A message was edited
    case chatEventMessageEdited(ChatEventMessageEdited)

    /// A message was deleted
    case chatEventMessageDeleted(ChatEventMessageDeleted)

    /// A message was pinned
    case chatEventMessagePinned(ChatEventMessagePinned)

    /// A message was unpinned
    case chatEventMessageUnpinned(ChatEventMessageUnpinned)

    /// A poll in a message was stopped
    case chatEventPollStopped(ChatEventPollStopped)

    /// A new member joined the chat
    case chatEventMemberJoined

    /// A new member joined the chat via an invite link
    case chatEventMemberJoinedByInviteLink(ChatEventMemberJoinedByInviteLink)

    /// A new member was accepted to the chat by an administrator
    case chatEventMemberJoinedByRequest(ChatEventMemberJoinedByRequest)

    /// A new chat member was invited
    case chatEventMemberInvited(ChatEventMemberInvited)

    /// A member left the chat
    case chatEventMemberLeft

    /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
    case chatEventMemberPromoted(ChatEventMemberPromoted)

    /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
    case chatEventMemberRestricted(ChatEventMemberRestricted)

    /// The chat available reactions were changed
    case chatEventAvailableReactionsChanged(ChatEventAvailableReactionsChanged)

    /// The chat background was changed
    case chatEventBackgroundChanged(ChatEventBackgroundChanged)

    /// The chat description was changed
    case chatEventDescriptionChanged(ChatEventDescriptionChanged)

    /// The chat emoji status was changed
    case chatEventEmojiStatusChanged(ChatEventEmojiStatusChanged)

    /// The linked chat of a supergroup was changed
    case chatEventLinkedChatChanged(ChatEventLinkedChatChanged)

    /// The supergroup location was changed
    case chatEventLocationChanged(ChatEventLocationChanged)

    /// The message auto-delete timer was changed
    case chatEventMessageAutoDeleteTimeChanged(ChatEventMessageAutoDeleteTimeChanged)

    /// The chat permissions were changed
    case chatEventPermissionsChanged(ChatEventPermissionsChanged)

    /// The chat photo was changed
    case chatEventPhotoChanged(ChatEventPhotoChanged)

    /// The slow_mode_delay setting of a supergroup was changed
    case chatEventSlowModeDelayChanged(ChatEventSlowModeDelayChanged)

    /// The supergroup sticker set was changed
    case chatEventStickerSetChanged(ChatEventStickerSetChanged)

    /// The supergroup sticker set with allowed custom emoji was changed
    case chatEventCustomEmojiStickerSetChanged(ChatEventCustomEmojiStickerSetChanged)

    /// The chat title was changed
    case chatEventTitleChanged(ChatEventTitleChanged)

    /// The chat editable username was changed
    case chatEventUsernameChanged(ChatEventUsernameChanged)

    /// The chat active usernames were changed
    case chatEventActiveUsernamesChanged(ChatEventActiveUsernamesChanged)

    /// The chat accent color or background custom emoji were changed
    case chatEventAccentColorChanged(ChatEventAccentColorChanged)

    /// The chat's profile accent color or profile background custom emoji were changed
    case chatEventProfileAccentColorChanged(ChatEventProfileAccentColorChanged)

    /// The has_protected_content setting of a channel was toggled
    case chatEventHasProtectedContentToggled(ChatEventHasProtectedContentToggled)

    /// The can_invite_users permission of a supergroup chat was toggled
    case chatEventInvitesToggled(ChatEventInvitesToggled)

    /// The is_all_history_available setting of a supergroup was toggled
    case chatEventIsAllHistoryAvailableToggled(ChatEventIsAllHistoryAvailableToggled)

    /// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
    case chatEventHasAggressiveAntiSpamEnabledToggled(ChatEventHasAggressiveAntiSpamEnabledToggled)

    /// The sign_messages setting of a channel was toggled
    case chatEventSignMessagesToggled(ChatEventSignMessagesToggled)

    /// A chat invite link was edited
    case chatEventInviteLinkEdited(ChatEventInviteLinkEdited)

    /// A chat invite link was revoked
    case chatEventInviteLinkRevoked(ChatEventInviteLinkRevoked)

    /// A revoked chat invite link was deleted
    case chatEventInviteLinkDeleted(ChatEventInviteLinkDeleted)

    /// A video chat was created
    case chatEventVideoChatCreated(ChatEventVideoChatCreated)

    /// A video chat was ended
    case chatEventVideoChatEnded(ChatEventVideoChatEnded)

    /// The mute_new_participants setting of a video chat was toggled
    case chatEventVideoChatMuteNewParticipantsToggled(ChatEventVideoChatMuteNewParticipantsToggled)

    /// A video chat participant was muted or unmuted
    case chatEventVideoChatParticipantIsMutedToggled(ChatEventVideoChatParticipantIsMutedToggled)

    /// A video chat participant volume level was changed
    case chatEventVideoChatParticipantVolumeLevelChanged(ChatEventVideoChatParticipantVolumeLevelChanged)

    /// The is_forum setting of a channel was toggled
    case chatEventIsForumToggled(ChatEventIsForumToggled)

    /// A new forum topic was created
    case chatEventForumTopicCreated(ChatEventForumTopicCreated)

    /// A forum topic was edited
    case chatEventForumTopicEdited(ChatEventForumTopicEdited)

    /// A forum topic was closed or reopened
    case chatEventForumTopicToggleIsClosed(ChatEventForumTopicToggleIsClosed)

    /// The General forum topic was hidden or unhidden
    case chatEventForumTopicToggleIsHidden(ChatEventForumTopicToggleIsHidden)

    /// A forum topic was deleted
    case chatEventForumTopicDeleted(ChatEventForumTopicDeleted)

    /// A pinned forum topic was changed
    case chatEventForumTopicPinned(ChatEventForumTopicPinned)


    private enum Kind: String, Codable {
        case chatEventMessageEdited
        case chatEventMessageDeleted
        case chatEventMessagePinned
        case chatEventMessageUnpinned
        case chatEventPollStopped
        case chatEventMemberJoined
        case chatEventMemberJoinedByInviteLink
        case chatEventMemberJoinedByRequest
        case chatEventMemberInvited
        case chatEventMemberLeft
        case chatEventMemberPromoted
        case chatEventMemberRestricted
        case chatEventAvailableReactionsChanged
        case chatEventBackgroundChanged
        case chatEventDescriptionChanged
        case chatEventEmojiStatusChanged
        case chatEventLinkedChatChanged
        case chatEventLocationChanged
        case chatEventMessageAutoDeleteTimeChanged
        case chatEventPermissionsChanged
        case chatEventPhotoChanged
        case chatEventSlowModeDelayChanged
        case chatEventStickerSetChanged
        case chatEventCustomEmojiStickerSetChanged
        case chatEventTitleChanged
        case chatEventUsernameChanged
        case chatEventActiveUsernamesChanged
        case chatEventAccentColorChanged
        case chatEventProfileAccentColorChanged
        case chatEventHasProtectedContentToggled
        case chatEventInvitesToggled
        case chatEventIsAllHistoryAvailableToggled
        case chatEventHasAggressiveAntiSpamEnabledToggled
        case chatEventSignMessagesToggled
        case chatEventInviteLinkEdited
        case chatEventInviteLinkRevoked
        case chatEventInviteLinkDeleted
        case chatEventVideoChatCreated
        case chatEventVideoChatEnded
        case chatEventVideoChatMuteNewParticipantsToggled
        case chatEventVideoChatParticipantIsMutedToggled
        case chatEventVideoChatParticipantVolumeLevelChanged
        case chatEventIsForumToggled
        case chatEventForumTopicCreated
        case chatEventForumTopicEdited
        case chatEventForumTopicToggleIsClosed
        case chatEventForumTopicToggleIsHidden
        case chatEventForumTopicDeleted
        case chatEventForumTopicPinned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatEventMessageEdited:
            let value = try ChatEventMessageEdited(from: decoder)
            self = .chatEventMessageEdited(value)
        case .chatEventMessageDeleted:
            let value = try ChatEventMessageDeleted(from: decoder)
            self = .chatEventMessageDeleted(value)
        case .chatEventMessagePinned:
            let value = try ChatEventMessagePinned(from: decoder)
            self = .chatEventMessagePinned(value)
        case .chatEventMessageUnpinned:
            let value = try ChatEventMessageUnpinned(from: decoder)
            self = .chatEventMessageUnpinned(value)
        case .chatEventPollStopped:
            let value = try ChatEventPollStopped(from: decoder)
            self = .chatEventPollStopped(value)
        case .chatEventMemberJoined:
            self = .chatEventMemberJoined
        case .chatEventMemberJoinedByInviteLink:
            let value = try ChatEventMemberJoinedByInviteLink(from: decoder)
            self = .chatEventMemberJoinedByInviteLink(value)
        case .chatEventMemberJoinedByRequest:
            let value = try ChatEventMemberJoinedByRequest(from: decoder)
            self = .chatEventMemberJoinedByRequest(value)
        case .chatEventMemberInvited:
            let value = try ChatEventMemberInvited(from: decoder)
            self = .chatEventMemberInvited(value)
        case .chatEventMemberLeft:
            self = .chatEventMemberLeft
        case .chatEventMemberPromoted:
            let value = try ChatEventMemberPromoted(from: decoder)
            self = .chatEventMemberPromoted(value)
        case .chatEventMemberRestricted:
            let value = try ChatEventMemberRestricted(from: decoder)
            self = .chatEventMemberRestricted(value)
        case .chatEventAvailableReactionsChanged:
            let value = try ChatEventAvailableReactionsChanged(from: decoder)
            self = .chatEventAvailableReactionsChanged(value)
        case .chatEventBackgroundChanged:
            let value = try ChatEventBackgroundChanged(from: decoder)
            self = .chatEventBackgroundChanged(value)
        case .chatEventDescriptionChanged:
            let value = try ChatEventDescriptionChanged(from: decoder)
            self = .chatEventDescriptionChanged(value)
        case .chatEventEmojiStatusChanged:
            let value = try ChatEventEmojiStatusChanged(from: decoder)
            self = .chatEventEmojiStatusChanged(value)
        case .chatEventLinkedChatChanged:
            let value = try ChatEventLinkedChatChanged(from: decoder)
            self = .chatEventLinkedChatChanged(value)
        case .chatEventLocationChanged:
            let value = try ChatEventLocationChanged(from: decoder)
            self = .chatEventLocationChanged(value)
        case .chatEventMessageAutoDeleteTimeChanged:
            let value = try ChatEventMessageAutoDeleteTimeChanged(from: decoder)
            self = .chatEventMessageAutoDeleteTimeChanged(value)
        case .chatEventPermissionsChanged:
            let value = try ChatEventPermissionsChanged(from: decoder)
            self = .chatEventPermissionsChanged(value)
        case .chatEventPhotoChanged:
            let value = try ChatEventPhotoChanged(from: decoder)
            self = .chatEventPhotoChanged(value)
        case .chatEventSlowModeDelayChanged:
            let value = try ChatEventSlowModeDelayChanged(from: decoder)
            self = .chatEventSlowModeDelayChanged(value)
        case .chatEventStickerSetChanged:
            let value = try ChatEventStickerSetChanged(from: decoder)
            self = .chatEventStickerSetChanged(value)
        case .chatEventCustomEmojiStickerSetChanged:
            let value = try ChatEventCustomEmojiStickerSetChanged(from: decoder)
            self = .chatEventCustomEmojiStickerSetChanged(value)
        case .chatEventTitleChanged:
            let value = try ChatEventTitleChanged(from: decoder)
            self = .chatEventTitleChanged(value)
        case .chatEventUsernameChanged:
            let value = try ChatEventUsernameChanged(from: decoder)
            self = .chatEventUsernameChanged(value)
        case .chatEventActiveUsernamesChanged:
            let value = try ChatEventActiveUsernamesChanged(from: decoder)
            self = .chatEventActiveUsernamesChanged(value)
        case .chatEventAccentColorChanged:
            let value = try ChatEventAccentColorChanged(from: decoder)
            self = .chatEventAccentColorChanged(value)
        case .chatEventProfileAccentColorChanged:
            let value = try ChatEventProfileAccentColorChanged(from: decoder)
            self = .chatEventProfileAccentColorChanged(value)
        case .chatEventHasProtectedContentToggled:
            let value = try ChatEventHasProtectedContentToggled(from: decoder)
            self = .chatEventHasProtectedContentToggled(value)
        case .chatEventInvitesToggled:
            let value = try ChatEventInvitesToggled(from: decoder)
            self = .chatEventInvitesToggled(value)
        case .chatEventIsAllHistoryAvailableToggled:
            let value = try ChatEventIsAllHistoryAvailableToggled(from: decoder)
            self = .chatEventIsAllHistoryAvailableToggled(value)
        case .chatEventHasAggressiveAntiSpamEnabledToggled:
            let value = try ChatEventHasAggressiveAntiSpamEnabledToggled(from: decoder)
            self = .chatEventHasAggressiveAntiSpamEnabledToggled(value)
        case .chatEventSignMessagesToggled:
            let value = try ChatEventSignMessagesToggled(from: decoder)
            self = .chatEventSignMessagesToggled(value)
        case .chatEventInviteLinkEdited:
            let value = try ChatEventInviteLinkEdited(from: decoder)
            self = .chatEventInviteLinkEdited(value)
        case .chatEventInviteLinkRevoked:
            let value = try ChatEventInviteLinkRevoked(from: decoder)
            self = .chatEventInviteLinkRevoked(value)
        case .chatEventInviteLinkDeleted:
            let value = try ChatEventInviteLinkDeleted(from: decoder)
            self = .chatEventInviteLinkDeleted(value)
        case .chatEventVideoChatCreated:
            let value = try ChatEventVideoChatCreated(from: decoder)
            self = .chatEventVideoChatCreated(value)
        case .chatEventVideoChatEnded:
            let value = try ChatEventVideoChatEnded(from: decoder)
            self = .chatEventVideoChatEnded(value)
        case .chatEventVideoChatMuteNewParticipantsToggled:
            let value = try ChatEventVideoChatMuteNewParticipantsToggled(from: decoder)
            self = .chatEventVideoChatMuteNewParticipantsToggled(value)
        case .chatEventVideoChatParticipantIsMutedToggled:
            let value = try ChatEventVideoChatParticipantIsMutedToggled(from: decoder)
            self = .chatEventVideoChatParticipantIsMutedToggled(value)
        case .chatEventVideoChatParticipantVolumeLevelChanged:
            let value = try ChatEventVideoChatParticipantVolumeLevelChanged(from: decoder)
            self = .chatEventVideoChatParticipantVolumeLevelChanged(value)
        case .chatEventIsForumToggled:
            let value = try ChatEventIsForumToggled(from: decoder)
            self = .chatEventIsForumToggled(value)
        case .chatEventForumTopicCreated:
            let value = try ChatEventForumTopicCreated(from: decoder)
            self = .chatEventForumTopicCreated(value)
        case .chatEventForumTopicEdited:
            let value = try ChatEventForumTopicEdited(from: decoder)
            self = .chatEventForumTopicEdited(value)
        case .chatEventForumTopicToggleIsClosed:
            let value = try ChatEventForumTopicToggleIsClosed(from: decoder)
            self = .chatEventForumTopicToggleIsClosed(value)
        case .chatEventForumTopicToggleIsHidden:
            let value = try ChatEventForumTopicToggleIsHidden(from: decoder)
            self = .chatEventForumTopicToggleIsHidden(value)
        case .chatEventForumTopicDeleted:
            let value = try ChatEventForumTopicDeleted(from: decoder)
            self = .chatEventForumTopicDeleted(value)
        case .chatEventForumTopicPinned:
            let value = try ChatEventForumTopicPinned(from: decoder)
            self = .chatEventForumTopicPinned(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatEventMessageEdited(let value):
            try container.encode(Kind.chatEventMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageDeleted(let value):
            try container.encode(Kind.chatEventMessageDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessagePinned(let value):
            try container.encode(Kind.chatEventMessagePinned, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageUnpinned(let value):
            try container.encode(Kind.chatEventMessageUnpinned, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPollStopped(let value):
            try container.encode(Kind.chatEventPollStopped, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberJoined:
            try container.encode(Kind.chatEventMemberJoined, forKey: .type)
        case .chatEventMemberJoinedByInviteLink(let value):
            try container.encode(Kind.chatEventMemberJoinedByInviteLink, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberJoinedByRequest(let value):
            try container.encode(Kind.chatEventMemberJoinedByRequest, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberInvited(let value):
            try container.encode(Kind.chatEventMemberInvited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberLeft:
            try container.encode(Kind.chatEventMemberLeft, forKey: .type)
        case .chatEventMemberPromoted(let value):
            try container.encode(Kind.chatEventMemberPromoted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberRestricted(let value):
            try container.encode(Kind.chatEventMemberRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventAvailableReactionsChanged(let value):
            try container.encode(Kind.chatEventAvailableReactionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventBackgroundChanged(let value):
            try container.encode(Kind.chatEventBackgroundChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventDescriptionChanged(let value):
            try container.encode(Kind.chatEventDescriptionChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventEmojiStatusChanged(let value):
            try container.encode(Kind.chatEventEmojiStatusChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventLinkedChatChanged(let value):
            try container.encode(Kind.chatEventLinkedChatChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventLocationChanged(let value):
            try container.encode(Kind.chatEventLocationChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageAutoDeleteTimeChanged(let value):
            try container.encode(Kind.chatEventMessageAutoDeleteTimeChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPermissionsChanged(let value):
            try container.encode(Kind.chatEventPermissionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPhotoChanged(let value):
            try container.encode(Kind.chatEventPhotoChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventSlowModeDelayChanged(let value):
            try container.encode(Kind.chatEventSlowModeDelayChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventStickerSetChanged(let value):
            try container.encode(Kind.chatEventStickerSetChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventCustomEmojiStickerSetChanged(let value):
            try container.encode(Kind.chatEventCustomEmojiStickerSetChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventTitleChanged(let value):
            try container.encode(Kind.chatEventTitleChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventUsernameChanged(let value):
            try container.encode(Kind.chatEventUsernameChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventActiveUsernamesChanged(let value):
            try container.encode(Kind.chatEventActiveUsernamesChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventAccentColorChanged(let value):
            try container.encode(Kind.chatEventAccentColorChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventProfileAccentColorChanged(let value):
            try container.encode(Kind.chatEventProfileAccentColorChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventHasProtectedContentToggled(let value):
            try container.encode(Kind.chatEventHasProtectedContentToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInvitesToggled(let value):
            try container.encode(Kind.chatEventInvitesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventIsAllHistoryAvailableToggled(let value):
            try container.encode(Kind.chatEventIsAllHistoryAvailableToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventHasAggressiveAntiSpamEnabledToggled(let value):
            try container.encode(Kind.chatEventHasAggressiveAntiSpamEnabledToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventSignMessagesToggled(let value):
            try container.encode(Kind.chatEventSignMessagesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInviteLinkEdited(let value):
            try container.encode(Kind.chatEventInviteLinkEdited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInviteLinkRevoked(let value):
            try container.encode(Kind.chatEventInviteLinkRevoked, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInviteLinkDeleted(let value):
            try container.encode(Kind.chatEventInviteLinkDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVideoChatCreated(let value):
            try container.encode(Kind.chatEventVideoChatCreated, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVideoChatEnded(let value):
            try container.encode(Kind.chatEventVideoChatEnded, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVideoChatMuteNewParticipantsToggled(let value):
            try container.encode(Kind.chatEventVideoChatMuteNewParticipantsToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVideoChatParticipantIsMutedToggled(let value):
            try container.encode(Kind.chatEventVideoChatParticipantIsMutedToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVideoChatParticipantVolumeLevelChanged(let value):
            try container.encode(Kind.chatEventVideoChatParticipantVolumeLevelChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventIsForumToggled(let value):
            try container.encode(Kind.chatEventIsForumToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicCreated(let value):
            try container.encode(Kind.chatEventForumTopicCreated, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicEdited(let value):
            try container.encode(Kind.chatEventForumTopicEdited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicToggleIsClosed(let value):
            try container.encode(Kind.chatEventForumTopicToggleIsClosed, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicToggleIsHidden(let value):
            try container.encode(Kind.chatEventForumTopicToggleIsHidden, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicDeleted(let value):
            try container.encode(Kind.chatEventForumTopicDeleted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventForumTopicPinned(let value):
            try container.encode(Kind.chatEventForumTopicPinned, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A message was edited
public struct ChatEventMessageEdited: Codable, Equatable, Hashable {

    /// The message after it was edited
    public let newMessage: Message

    /// The original message before the edit
    public let oldMessage: Message


    public init(
        newMessage: Message,
        oldMessage: Message
    ) {
        self.newMessage = newMessage
        self.oldMessage = oldMessage
    }
}

/// A message was deleted
public struct ChatEventMessageDeleted: Codable, Equatable, Hashable {

    /// True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive
    public let canReportAntiSpamFalsePositive: Bool

    /// Deleted message
    public let message: Message


    public init(
        canReportAntiSpamFalsePositive: Bool,
        message: Message
    ) {
        self.canReportAntiSpamFalsePositive = canReportAntiSpamFalsePositive
        self.message = message
    }
}

/// A message was pinned
public struct ChatEventMessagePinned: Codable, Equatable, Hashable {

    /// Pinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A message was unpinned
public struct ChatEventMessageUnpinned: Codable, Equatable, Hashable {

    /// Unpinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A poll in a message was stopped
public struct ChatEventPollStopped: Codable, Equatable, Hashable {

    /// The message with the poll
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A new member joined the chat via an invite link
public struct ChatEventMemberJoinedByInviteLink: Codable, Equatable, Hashable {

    /// Invite link used to join the chat
    public let inviteLink: ChatInviteLink

    /// True, if the user has joined the chat using an invite link for a chat folder
    public let viaChatFolderInviteLink: Bool


    public init(
        inviteLink: ChatInviteLink,
        viaChatFolderInviteLink: Bool
    ) {
        self.inviteLink = inviteLink
        self.viaChatFolderInviteLink = viaChatFolderInviteLink
    }
}

/// A new member was accepted to the chat by an administrator
public struct ChatEventMemberJoinedByRequest: Codable, Equatable, Hashable {

    /// User identifier of the chat administrator, approved user join request
    public let approverUserId: Int64

    /// Invite link used to join the chat; may be null
    public let inviteLink: ChatInviteLink?


    public init(
        approverUserId: Int64,
        inviteLink: ChatInviteLink?
    ) {
        self.approverUserId = approverUserId
        self.inviteLink = inviteLink
    }
}

/// A new chat member was invited
public struct ChatEventMemberInvited: Codable, Equatable, Hashable {

    /// New member status
    public let status: ChatMemberStatus

    /// New member user identifier
    public let userId: Int64


    public init(
        status: ChatMemberStatus,
        userId: Int64
    ) {
        self.status = status
        self.userId = userId
    }
}

/// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
public struct ChatEventMemberPromoted: Codable, Equatable, Hashable {

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus

    /// Affected chat member user identifier
    public let userId: Int64


    public init(
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus,
        userId: Int64
    ) {
        self.newStatus = newStatus
        self.oldStatus = oldStatus
        self.userId = userId
    }
}

/// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
public struct ChatEventMemberRestricted: Codable, Equatable, Hashable {

    /// Affected chat member identifier
    public let memberId: MessageSender

    /// New status of the chat member
    public let newStatus: ChatMemberStatus

    /// Previous status of the chat member
    public let oldStatus: ChatMemberStatus


    public init(
        memberId: MessageSender,
        newStatus: ChatMemberStatus,
        oldStatus: ChatMemberStatus
    ) {
        self.memberId = memberId
        self.newStatus = newStatus
        self.oldStatus = oldStatus
    }
}

/// The chat available reactions were changed
public struct ChatEventAvailableReactionsChanged: Codable, Equatable, Hashable {

    /// New chat available reactions
    public let newAvailableReactions: ChatAvailableReactions

    /// Previous chat available reactions
    public let oldAvailableReactions: ChatAvailableReactions


    public init(
        newAvailableReactions: ChatAvailableReactions,
        oldAvailableReactions: ChatAvailableReactions
    ) {
        self.newAvailableReactions = newAvailableReactions
        self.oldAvailableReactions = oldAvailableReactions
    }
}

/// The chat background was changed
public struct ChatEventBackgroundChanged: Codable, Equatable, Hashable {

    /// New background; may be null if none
    public let newBackground: ChatBackground?

    /// Previous background; may be null if none
    public let oldBackground: ChatBackground?


    public init(
        newBackground: ChatBackground?,
        oldBackground: ChatBackground?
    ) {
        self.newBackground = newBackground
        self.oldBackground = oldBackground
    }
}

/// The chat description was changed
public struct ChatEventDescriptionChanged: Codable, Equatable, Hashable {

    /// New chat description
    public let newDescription: String

    /// Previous chat description
    public let oldDescription: String


    public init(
        newDescription: String,
        oldDescription: String
    ) {
        self.newDescription = newDescription
        self.oldDescription = oldDescription
    }
}

/// The chat emoji status was changed
public struct ChatEventEmojiStatusChanged: Codable, Equatable, Hashable {

    /// New emoji status; may be null if none
    public let newEmojiStatus: EmojiStatus?

    /// Previous emoji status; may be null if none
    public let oldEmojiStatus: EmojiStatus?


    public init(
        newEmojiStatus: EmojiStatus?,
        oldEmojiStatus: EmojiStatus?
    ) {
        self.newEmojiStatus = newEmojiStatus
        self.oldEmojiStatus = oldEmojiStatus
    }
}

/// The linked chat of a supergroup was changed
public struct ChatEventLinkedChatChanged: Codable, Equatable, Hashable {

    /// New supergroup linked chat identifier
    public let newLinkedChatId: Int64

    /// Previous supergroup linked chat identifier
    public let oldLinkedChatId: Int64


    public init(
        newLinkedChatId: Int64,
        oldLinkedChatId: Int64
    ) {
        self.newLinkedChatId = newLinkedChatId
        self.oldLinkedChatId = oldLinkedChatId
    }
}

/// The supergroup location was changed
public struct ChatEventLocationChanged: Codable, Equatable, Hashable {

    /// New location; may be null
    public let newLocation: ChatLocation?

    /// Previous location; may be null
    public let oldLocation: ChatLocation?


    public init(
        newLocation: ChatLocation?,
        oldLocation: ChatLocation?
    ) {
        self.newLocation = newLocation
        self.oldLocation = oldLocation
    }
}

/// The message auto-delete timer was changed
public struct ChatEventMessageAutoDeleteTimeChanged: Codable, Equatable, Hashable {

    /// New value of message_auto_delete_time
    public let newMessageAutoDeleteTime: Int

    /// Previous value of message_auto_delete_time
    public let oldMessageAutoDeleteTime: Int


    public init(
        newMessageAutoDeleteTime: Int,
        oldMessageAutoDeleteTime: Int
    ) {
        self.newMessageAutoDeleteTime = newMessageAutoDeleteTime
        self.oldMessageAutoDeleteTime = oldMessageAutoDeleteTime
    }
}

/// The chat permissions were changed
public struct ChatEventPermissionsChanged: Codable, Equatable, Hashable {

    /// New chat permissions
    public let newPermissions: ChatPermissions

    /// Previous chat permissions
    public let oldPermissions: ChatPermissions


    public init(
        newPermissions: ChatPermissions,
        oldPermissions: ChatPermissions
    ) {
        self.newPermissions = newPermissions
        self.oldPermissions = oldPermissions
    }
}

/// The chat photo was changed
public struct ChatEventPhotoChanged: Codable, Equatable, Hashable {

    /// New chat photo value; may be null
    public let newPhoto: ChatPhoto?

    /// Previous chat photo value; may be null
    public let oldPhoto: ChatPhoto?


    public init(
        newPhoto: ChatPhoto?,
        oldPhoto: ChatPhoto?
    ) {
        self.newPhoto = newPhoto
        self.oldPhoto = oldPhoto
    }
}

/// The slow_mode_delay setting of a supergroup was changed
public struct ChatEventSlowModeDelayChanged: Codable, Equatable, Hashable {

    /// New value of slow_mode_delay, in seconds
    public let newSlowModeDelay: Int

    /// Previous value of slow_mode_delay, in seconds
    public let oldSlowModeDelay: Int


    public init(
        newSlowModeDelay: Int,
        oldSlowModeDelay: Int
    ) {
        self.newSlowModeDelay = newSlowModeDelay
        self.oldSlowModeDelay = oldSlowModeDelay
    }
}

/// The supergroup sticker set was changed
public struct ChatEventStickerSetChanged: Codable, Equatable, Hashable {

    /// New identifier of the chat sticker set; 0 if none
    public let newStickerSetId: TdInt64

    /// Previous identifier of the chat sticker set; 0 if none
    public let oldStickerSetId: TdInt64


    public init(
        newStickerSetId: TdInt64,
        oldStickerSetId: TdInt64
    ) {
        self.newStickerSetId = newStickerSetId
        self.oldStickerSetId = oldStickerSetId
    }
}

/// The supergroup sticker set with allowed custom emoji was changed
public struct ChatEventCustomEmojiStickerSetChanged: Codable, Equatable, Hashable {

    /// New identifier of the chat sticker set; 0 if none
    public let newStickerSetId: TdInt64

    /// Previous identifier of the chat sticker set; 0 if none
    public let oldStickerSetId: TdInt64


    public init(
        newStickerSetId: TdInt64,
        oldStickerSetId: TdInt64
    ) {
        self.newStickerSetId = newStickerSetId
        self.oldStickerSetId = oldStickerSetId
    }
}

/// The chat title was changed
public struct ChatEventTitleChanged: Codable, Equatable, Hashable {

    /// New chat title
    public let newTitle: String

    /// Previous chat title
    public let oldTitle: String


    public init(
        newTitle: String,
        oldTitle: String
    ) {
        self.newTitle = newTitle
        self.oldTitle = oldTitle
    }
}

/// The chat editable username was changed
public struct ChatEventUsernameChanged: Codable, Equatable, Hashable {

    /// New chat username
    public let newUsername: String

    /// Previous chat username
    public let oldUsername: String


    public init(
        newUsername: String,
        oldUsername: String
    ) {
        self.newUsername = newUsername
        self.oldUsername = oldUsername
    }
}

/// The chat active usernames were changed
public struct ChatEventActiveUsernamesChanged: Codable, Equatable, Hashable {

    /// New list of active usernames
    public let newUsernames: [String]

    /// Previous list of active usernames
    public let oldUsernames: [String]


    public init(
        newUsernames: [String],
        oldUsernames: [String]
    ) {
        self.newUsernames = newUsernames
        self.oldUsernames = oldUsernames
    }
}

/// The chat accent color or background custom emoji were changed
public struct ChatEventAccentColorChanged: Codable, Equatable, Hashable {

    /// New identifier of chat accent color
    public let newAccentColorId: Int

    /// New identifier of the custom emoji; 0 if none
    public let newBackgroundCustomEmojiId: TdInt64

    /// Previous identifier of chat accent color
    public let oldAccentColorId: Int

    /// Previous identifier of the custom emoji; 0 if none
    public let oldBackgroundCustomEmojiId: TdInt64


    public init(
        newAccentColorId: Int,
        newBackgroundCustomEmojiId: TdInt64,
        oldAccentColorId: Int,
        oldBackgroundCustomEmojiId: TdInt64
    ) {
        self.newAccentColorId = newAccentColorId
        self.newBackgroundCustomEmojiId = newBackgroundCustomEmojiId
        self.oldAccentColorId = oldAccentColorId
        self.oldBackgroundCustomEmojiId = oldBackgroundCustomEmojiId
    }
}

/// The chat's profile accent color or profile background custom emoji were changed
public struct ChatEventProfileAccentColorChanged: Codable, Equatable, Hashable {

    /// New identifier of chat's profile accent color; -1 if none
    public let newProfileAccentColorId: Int

    /// New identifier of the custom emoji; 0 if none
    public let newProfileBackgroundCustomEmojiId: TdInt64

    /// Previous identifier of chat's profile accent color; -1 if none
    public let oldProfileAccentColorId: Int

    /// Previous identifier of the custom emoji; 0 if none
    public let oldProfileBackgroundCustomEmojiId: TdInt64


    public init(
        newProfileAccentColorId: Int,
        newProfileBackgroundCustomEmojiId: TdInt64,
        oldProfileAccentColorId: Int,
        oldProfileBackgroundCustomEmojiId: TdInt64
    ) {
        self.newProfileAccentColorId = newProfileAccentColorId
        self.newProfileBackgroundCustomEmojiId = newProfileBackgroundCustomEmojiId
        self.oldProfileAccentColorId = oldProfileAccentColorId
        self.oldProfileBackgroundCustomEmojiId = oldProfileBackgroundCustomEmojiId
    }
}

/// The has_protected_content setting of a channel was toggled
public struct ChatEventHasProtectedContentToggled: Codable, Equatable, Hashable {

    /// New value of has_protected_content
    public let hasProtectedContent: Bool


    public init(hasProtectedContent: Bool) {
        self.hasProtectedContent = hasProtectedContent
    }
}

/// The can_invite_users permission of a supergroup chat was toggled
public struct ChatEventInvitesToggled: Codable, Equatable, Hashable {

    /// New value of can_invite_users permission
    public let canInviteUsers: Bool


    public init(canInviteUsers: Bool) {
        self.canInviteUsers = canInviteUsers
    }
}

/// The is_all_history_available setting of a supergroup was toggled
public struct ChatEventIsAllHistoryAvailableToggled: Codable, Equatable, Hashable {

    /// New value of is_all_history_available
    public let isAllHistoryAvailable: Bool


    public init(isAllHistoryAvailable: Bool) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
    }
}

/// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
public struct ChatEventHasAggressiveAntiSpamEnabledToggled: Codable, Equatable, Hashable {

    /// New value of has_aggressive_anti_spam_enabled
    public let hasAggressiveAntiSpamEnabled: Bool


    public init(hasAggressiveAntiSpamEnabled: Bool) {
        self.hasAggressiveAntiSpamEnabled = hasAggressiveAntiSpamEnabled
    }
}

/// The sign_messages setting of a channel was toggled
public struct ChatEventSignMessagesToggled: Codable, Equatable, Hashable {

    /// New value of sign_messages
    public let signMessages: Bool


    public init(signMessages: Bool) {
        self.signMessages = signMessages
    }
}

/// A chat invite link was edited
public struct ChatEventInviteLinkEdited: Codable, Equatable, Hashable {

    /// New information about the invite link
    public let newInviteLink: ChatInviteLink

    /// Previous information about the invite link
    public let oldInviteLink: ChatInviteLink


    public init(
        newInviteLink: ChatInviteLink,
        oldInviteLink: ChatInviteLink
    ) {
        self.newInviteLink = newInviteLink
        self.oldInviteLink = oldInviteLink
    }
}

/// A chat invite link was revoked
public struct ChatEventInviteLinkRevoked: Codable, Equatable, Hashable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A revoked chat invite link was deleted
public struct ChatEventInviteLinkDeleted: Codable, Equatable, Hashable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A video chat was created
public struct ChatEventVideoChatCreated: Codable, Equatable, Hashable {

    /// Identifier of the video chat. The video chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// A video chat was ended
public struct ChatEventVideoChatEnded: Codable, Equatable, Hashable {

    /// Identifier of the video chat. The video chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// The mute_new_participants setting of a video chat was toggled
public struct ChatEventVideoChatMuteNewParticipantsToggled: Codable, Equatable, Hashable {

    /// New value of the mute_new_participants setting
    public let muteNewParticipants: Bool


    public init(muteNewParticipants: Bool) {
        self.muteNewParticipants = muteNewParticipants
    }
}

/// A video chat participant was muted or unmuted
public struct ChatEventVideoChatParticipantIsMutedToggled: Codable, Equatable, Hashable {

    /// New value of is_muted
    public let isMuted: Bool

    /// Identifier of the affected group call participant
    public let participantId: MessageSender


    public init(
        isMuted: Bool,
        participantId: MessageSender
    ) {
        self.isMuted = isMuted
        self.participantId = participantId
    }
}

/// A video chat participant volume level was changed
public struct ChatEventVideoChatParticipantVolumeLevelChanged: Codable, Equatable, Hashable {

    /// Identifier of the affected group call participant
    public let participantId: MessageSender

    /// New value of volume_level; 1-20000 in hundreds of percents
    public let volumeLevel: Int


    public init(
        participantId: MessageSender,
        volumeLevel: Int
    ) {
        self.participantId = participantId
        self.volumeLevel = volumeLevel
    }
}

/// The is_forum setting of a channel was toggled
public struct ChatEventIsForumToggled: Codable, Equatable, Hashable {

    /// New value of is_forum
    public let isForum: Bool


    public init(isForum: Bool) {
        self.isForum = isForum
    }
}

/// A new forum topic was created
public struct ChatEventForumTopicCreated: Codable, Equatable, Hashable {

    /// Information about the topic
    public let topicInfo: ForumTopicInfo


    public init(topicInfo: ForumTopicInfo) {
        self.topicInfo = topicInfo
    }
}

/// A forum topic was edited
public struct ChatEventForumTopicEdited: Codable, Equatable, Hashable {

    /// New information about the topic
    public let newTopicInfo: ForumTopicInfo

    /// Old information about the topic
    public let oldTopicInfo: ForumTopicInfo


    public init(
        newTopicInfo: ForumTopicInfo,
        oldTopicInfo: ForumTopicInfo
    ) {
        self.newTopicInfo = newTopicInfo
        self.oldTopicInfo = oldTopicInfo
    }
}

/// A forum topic was closed or reopened
public struct ChatEventForumTopicToggleIsClosed: Codable, Equatable, Hashable {

    /// New information about the topic
    public let topicInfo: ForumTopicInfo


    public init(topicInfo: ForumTopicInfo) {
        self.topicInfo = topicInfo
    }
}

/// The General forum topic was hidden or unhidden
public struct ChatEventForumTopicToggleIsHidden: Codable, Equatable, Hashable {

    /// New information about the topic
    public let topicInfo: ForumTopicInfo


    public init(topicInfo: ForumTopicInfo) {
        self.topicInfo = topicInfo
    }
}

/// A forum topic was deleted
public struct ChatEventForumTopicDeleted: Codable, Equatable, Hashable {

    /// Information about the topic
    public let topicInfo: ForumTopicInfo


    public init(topicInfo: ForumTopicInfo) {
        self.topicInfo = topicInfo
    }
}

/// A pinned forum topic was changed
public struct ChatEventForumTopicPinned: Codable, Equatable, Hashable {

    /// Information about the new pinned topic; may be null
    public let newTopicInfo: ForumTopicInfo?

    /// Information about the old pinned topic; may be null
    public let oldTopicInfo: ForumTopicInfo?


    public init(
        newTopicInfo: ForumTopicInfo?,
        oldTopicInfo: ForumTopicInfo?
    ) {
        self.newTopicInfo = newTopicInfo
        self.oldTopicInfo = oldTopicInfo
    }
}


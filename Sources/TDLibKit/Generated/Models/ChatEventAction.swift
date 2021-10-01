//
//  ChatEventAction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Represents a chat event
public enum ChatEventAction: Codable {

    /// A message was edited
    case chatEventMessageEdited(ChatEventMessageEdited)

    /// A message was deleted
    case chatEventMessageDeleted(ChatEventMessageDeleted)

    /// A poll in a message was stopped
    case chatEventPollStopped(ChatEventPollStopped)

    /// A message was pinned
    case chatEventMessagePinned(ChatEventMessagePinned)

    /// A message was unpinned
    case chatEventMessageUnpinned(ChatEventMessageUnpinned)

    /// A new member joined the chat
    case chatEventMemberJoined

    /// A new member joined the chat by an invite link
    case chatEventMemberJoinedByInviteLink(ChatEventMemberJoinedByInviteLink)

    /// A member left the chat
    case chatEventMemberLeft

    /// A new chat member was invited
    case chatEventMemberInvited(ChatEventMemberInvited)

    /// A chat member has gained/lost administrator status, or the list of their administrator privileges has changed
    case chatEventMemberPromoted(ChatEventMemberPromoted)

    /// A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed
    case chatEventMemberRestricted(ChatEventMemberRestricted)

    /// The chat title was changed
    case chatEventTitleChanged(ChatEventTitleChanged)

    /// The chat permissions was changed
    case chatEventPermissionsChanged(ChatEventPermissionsChanged)

    /// The chat description was changed
    case chatEventDescriptionChanged(ChatEventDescriptionChanged)

    /// The chat username was changed
    case chatEventUsernameChanged(ChatEventUsernameChanged)

    /// The chat photo was changed
    case chatEventPhotoChanged(ChatEventPhotoChanged)

    /// The can_invite_users permission of a supergroup chat was toggled
    case chatEventInvitesToggled(ChatEventInvitesToggled)

    /// The linked chat of a supergroup was changed
    case chatEventLinkedChatChanged(ChatEventLinkedChatChanged)

    /// The slow_mode_delay setting of a supergroup was changed
    case chatEventSlowModeDelayChanged(ChatEventSlowModeDelayChanged)

    /// The message TTL setting was changed
    case chatEventMessageTtlSettingChanged(ChatEventMessageTtlSettingChanged)

    /// The sign_messages setting of a channel was toggled
    case chatEventSignMessagesToggled(ChatEventSignMessagesToggled)

    /// The supergroup sticker set was changed
    case chatEventStickerSetChanged(ChatEventStickerSetChanged)

    /// The supergroup location was changed
    case chatEventLocationChanged(ChatEventLocationChanged)

    /// The is_all_history_available setting of a supergroup was toggled
    case chatEventIsAllHistoryAvailableToggled(ChatEventIsAllHistoryAvailableToggled)

    /// A chat invite link was edited
    case chatEventInviteLinkEdited(ChatEventInviteLinkEdited)

    /// A chat invite link was revoked
    case chatEventInviteLinkRevoked(ChatEventInviteLinkRevoked)

    /// A revoked chat invite link was deleted
    case chatEventInviteLinkDeleted(ChatEventInviteLinkDeleted)

    /// A voice chat was created
    case chatEventVoiceChatCreated(ChatEventVoiceChatCreated)

    /// A voice chat was discarded
    case chatEventVoiceChatDiscarded(ChatEventVoiceChatDiscarded)

    /// A voice chat participant was muted or unmuted
    case chatEventVoiceChatParticipantIsMutedToggled(ChatEventVoiceChatParticipantIsMutedToggled)

    /// A voice chat participant volume level was changed
    case chatEventVoiceChatParticipantVolumeLevelChanged(ChatEventVoiceChatParticipantVolumeLevelChanged)

    /// The mute_new_participants setting of a voice chat was toggled
    case chatEventVoiceChatMuteNewParticipantsToggled(ChatEventVoiceChatMuteNewParticipantsToggled)


    private enum Kind: String, Codable {
        case chatEventMessageEdited
        case chatEventMessageDeleted
        case chatEventPollStopped
        case chatEventMessagePinned
        case chatEventMessageUnpinned
        case chatEventMemberJoined
        case chatEventMemberJoinedByInviteLink
        case chatEventMemberLeft
        case chatEventMemberInvited
        case chatEventMemberPromoted
        case chatEventMemberRestricted
        case chatEventTitleChanged
        case chatEventPermissionsChanged
        case chatEventDescriptionChanged
        case chatEventUsernameChanged
        case chatEventPhotoChanged
        case chatEventInvitesToggled
        case chatEventLinkedChatChanged
        case chatEventSlowModeDelayChanged
        case chatEventMessageTtlSettingChanged
        case chatEventSignMessagesToggled
        case chatEventStickerSetChanged
        case chatEventLocationChanged
        case chatEventIsAllHistoryAvailableToggled
        case chatEventInviteLinkEdited
        case chatEventInviteLinkRevoked
        case chatEventInviteLinkDeleted
        case chatEventVoiceChatCreated
        case chatEventVoiceChatDiscarded
        case chatEventVoiceChatParticipantIsMutedToggled
        case chatEventVoiceChatParticipantVolumeLevelChanged
        case chatEventVoiceChatMuteNewParticipantsToggled
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
        case .chatEventPollStopped:
            let value = try ChatEventPollStopped(from: decoder)
            self = .chatEventPollStopped(value)
        case .chatEventMessagePinned:
            let value = try ChatEventMessagePinned(from: decoder)
            self = .chatEventMessagePinned(value)
        case .chatEventMessageUnpinned:
            let value = try ChatEventMessageUnpinned(from: decoder)
            self = .chatEventMessageUnpinned(value)
        case .chatEventMemberJoined:
            self = .chatEventMemberJoined
        case .chatEventMemberJoinedByInviteLink:
            let value = try ChatEventMemberJoinedByInviteLink(from: decoder)
            self = .chatEventMemberJoinedByInviteLink(value)
        case .chatEventMemberLeft:
            self = .chatEventMemberLeft
        case .chatEventMemberInvited:
            let value = try ChatEventMemberInvited(from: decoder)
            self = .chatEventMemberInvited(value)
        case .chatEventMemberPromoted:
            let value = try ChatEventMemberPromoted(from: decoder)
            self = .chatEventMemberPromoted(value)
        case .chatEventMemberRestricted:
            let value = try ChatEventMemberRestricted(from: decoder)
            self = .chatEventMemberRestricted(value)
        case .chatEventTitleChanged:
            let value = try ChatEventTitleChanged(from: decoder)
            self = .chatEventTitleChanged(value)
        case .chatEventPermissionsChanged:
            let value = try ChatEventPermissionsChanged(from: decoder)
            self = .chatEventPermissionsChanged(value)
        case .chatEventDescriptionChanged:
            let value = try ChatEventDescriptionChanged(from: decoder)
            self = .chatEventDescriptionChanged(value)
        case .chatEventUsernameChanged:
            let value = try ChatEventUsernameChanged(from: decoder)
            self = .chatEventUsernameChanged(value)
        case .chatEventPhotoChanged:
            let value = try ChatEventPhotoChanged(from: decoder)
            self = .chatEventPhotoChanged(value)
        case .chatEventInvitesToggled:
            let value = try ChatEventInvitesToggled(from: decoder)
            self = .chatEventInvitesToggled(value)
        case .chatEventLinkedChatChanged:
            let value = try ChatEventLinkedChatChanged(from: decoder)
            self = .chatEventLinkedChatChanged(value)
        case .chatEventSlowModeDelayChanged:
            let value = try ChatEventSlowModeDelayChanged(from: decoder)
            self = .chatEventSlowModeDelayChanged(value)
        case .chatEventMessageTtlSettingChanged:
            let value = try ChatEventMessageTtlSettingChanged(from: decoder)
            self = .chatEventMessageTtlSettingChanged(value)
        case .chatEventSignMessagesToggled:
            let value = try ChatEventSignMessagesToggled(from: decoder)
            self = .chatEventSignMessagesToggled(value)
        case .chatEventStickerSetChanged:
            let value = try ChatEventStickerSetChanged(from: decoder)
            self = .chatEventStickerSetChanged(value)
        case .chatEventLocationChanged:
            let value = try ChatEventLocationChanged(from: decoder)
            self = .chatEventLocationChanged(value)
        case .chatEventIsAllHistoryAvailableToggled:
            let value = try ChatEventIsAllHistoryAvailableToggled(from: decoder)
            self = .chatEventIsAllHistoryAvailableToggled(value)
        case .chatEventInviteLinkEdited:
            let value = try ChatEventInviteLinkEdited(from: decoder)
            self = .chatEventInviteLinkEdited(value)
        case .chatEventInviteLinkRevoked:
            let value = try ChatEventInviteLinkRevoked(from: decoder)
            self = .chatEventInviteLinkRevoked(value)
        case .chatEventInviteLinkDeleted:
            let value = try ChatEventInviteLinkDeleted(from: decoder)
            self = .chatEventInviteLinkDeleted(value)
        case .chatEventVoiceChatCreated:
            let value = try ChatEventVoiceChatCreated(from: decoder)
            self = .chatEventVoiceChatCreated(value)
        case .chatEventVoiceChatDiscarded:
            let value = try ChatEventVoiceChatDiscarded(from: decoder)
            self = .chatEventVoiceChatDiscarded(value)
        case .chatEventVoiceChatParticipantIsMutedToggled:
            let value = try ChatEventVoiceChatParticipantIsMutedToggled(from: decoder)
            self = .chatEventVoiceChatParticipantIsMutedToggled(value)
        case .chatEventVoiceChatParticipantVolumeLevelChanged:
            let value = try ChatEventVoiceChatParticipantVolumeLevelChanged(from: decoder)
            self = .chatEventVoiceChatParticipantVolumeLevelChanged(value)
        case .chatEventVoiceChatMuteNewParticipantsToggled:
            let value = try ChatEventVoiceChatMuteNewParticipantsToggled(from: decoder)
            self = .chatEventVoiceChatMuteNewParticipantsToggled(value)
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
        case .chatEventPollStopped(let value):
            try container.encode(Kind.chatEventPollStopped, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessagePinned(let value):
            try container.encode(Kind.chatEventMessagePinned, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageUnpinned(let value):
            try container.encode(Kind.chatEventMessageUnpinned, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberJoined:
            try container.encode(Kind.chatEventMemberJoined, forKey: .type)
        case .chatEventMemberJoinedByInviteLink(let value):
            try container.encode(Kind.chatEventMemberJoinedByInviteLink, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberLeft:
            try container.encode(Kind.chatEventMemberLeft, forKey: .type)
        case .chatEventMemberInvited(let value):
            try container.encode(Kind.chatEventMemberInvited, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberPromoted(let value):
            try container.encode(Kind.chatEventMemberPromoted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMemberRestricted(let value):
            try container.encode(Kind.chatEventMemberRestricted, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventTitleChanged(let value):
            try container.encode(Kind.chatEventTitleChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPermissionsChanged(let value):
            try container.encode(Kind.chatEventPermissionsChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventDescriptionChanged(let value):
            try container.encode(Kind.chatEventDescriptionChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventUsernameChanged(let value):
            try container.encode(Kind.chatEventUsernameChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventPhotoChanged(let value):
            try container.encode(Kind.chatEventPhotoChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventInvitesToggled(let value):
            try container.encode(Kind.chatEventInvitesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventLinkedChatChanged(let value):
            try container.encode(Kind.chatEventLinkedChatChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventSlowModeDelayChanged(let value):
            try container.encode(Kind.chatEventSlowModeDelayChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventMessageTtlSettingChanged(let value):
            try container.encode(Kind.chatEventMessageTtlSettingChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventSignMessagesToggled(let value):
            try container.encode(Kind.chatEventSignMessagesToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventStickerSetChanged(let value):
            try container.encode(Kind.chatEventStickerSetChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventLocationChanged(let value):
            try container.encode(Kind.chatEventLocationChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventIsAllHistoryAvailableToggled(let value):
            try container.encode(Kind.chatEventIsAllHistoryAvailableToggled, forKey: .type)
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
        case .chatEventVoiceChatCreated(let value):
            try container.encode(Kind.chatEventVoiceChatCreated, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVoiceChatDiscarded(let value):
            try container.encode(Kind.chatEventVoiceChatDiscarded, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVoiceChatParticipantIsMutedToggled(let value):
            try container.encode(Kind.chatEventVoiceChatParticipantIsMutedToggled, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVoiceChatParticipantVolumeLevelChanged(let value):
            try container.encode(Kind.chatEventVoiceChatParticipantVolumeLevelChanged, forKey: .type)
            try value.encode(to: encoder)
        case .chatEventVoiceChatMuteNewParticipantsToggled(let value):
            try container.encode(Kind.chatEventVoiceChatMuteNewParticipantsToggled, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A message was edited
public struct ChatEventMessageEdited: Codable {

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
public struct ChatEventMessageDeleted: Codable {

    /// Deleted message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A poll in a message was stopped
public struct ChatEventPollStopped: Codable {

    /// The message with the poll
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A message was pinned
public struct ChatEventMessagePinned: Codable {

    /// Pinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A message was unpinned
public struct ChatEventMessageUnpinned: Codable {

    /// Unpinned message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A new member joined the chat by an invite link
public struct ChatEventMemberJoinedByInviteLink: Codable {

    /// Invite link used to join the chat
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A new chat member was invited
public struct ChatEventMemberInvited: Codable {

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
public struct ChatEventMemberPromoted: Codable {

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
public struct ChatEventMemberRestricted: Codable {

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

/// The chat title was changed
public struct ChatEventTitleChanged: Codable {

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

/// The chat permissions was changed
public struct ChatEventPermissionsChanged: Codable {

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

/// The chat description was changed
public struct ChatEventDescriptionChanged: Codable {

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

/// The chat username was changed
public struct ChatEventUsernameChanged: Codable {

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

/// The chat photo was changed
public struct ChatEventPhotoChanged: Codable {

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

/// The can_invite_users permission of a supergroup chat was toggled
public struct ChatEventInvitesToggled: Codable {

    /// New value of can_invite_users permission
    public let canInviteUsers: Bool


    public init(canInviteUsers: Bool) {
        self.canInviteUsers = canInviteUsers
    }
}

/// The linked chat of a supergroup was changed
public struct ChatEventLinkedChatChanged: Codable {

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

/// The slow_mode_delay setting of a supergroup was changed
public struct ChatEventSlowModeDelayChanged: Codable {

    /// New value of slow_mode_delay
    public let newSlowModeDelay: Int

    /// Previous value of slow_mode_delay
    public let oldSlowModeDelay: Int


    public init(
        newSlowModeDelay: Int,
        oldSlowModeDelay: Int
    ) {
        self.newSlowModeDelay = newSlowModeDelay
        self.oldSlowModeDelay = oldSlowModeDelay
    }
}

/// The message TTL setting was changed
public struct ChatEventMessageTtlSettingChanged: Codable {

    /// New value of message_ttl_setting
    public let newMessageTtlSetting: Int

    /// Previous value of message_ttl_setting
    public let oldMessageTtlSetting: Int


    public init(
        newMessageTtlSetting: Int,
        oldMessageTtlSetting: Int
    ) {
        self.newMessageTtlSetting = newMessageTtlSetting
        self.oldMessageTtlSetting = oldMessageTtlSetting
    }
}

/// The sign_messages setting of a channel was toggled
public struct ChatEventSignMessagesToggled: Codable {

    /// New value of sign_messages
    public let signMessages: Bool


    public init(signMessages: Bool) {
        self.signMessages = signMessages
    }
}

/// The supergroup sticker set was changed
public struct ChatEventStickerSetChanged: Codable {

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

/// The supergroup location was changed
public struct ChatEventLocationChanged: Codable {

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

/// The is_all_history_available setting of a supergroup was toggled
public struct ChatEventIsAllHistoryAvailableToggled: Codable {

    /// New value of is_all_history_available
    public let isAllHistoryAvailable: Bool


    public init(isAllHistoryAvailable: Bool) {
        self.isAllHistoryAvailable = isAllHistoryAvailable
    }
}

/// A chat invite link was edited
public struct ChatEventInviteLinkEdited: Codable {

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
public struct ChatEventInviteLinkRevoked: Codable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A revoked chat invite link was deleted
public struct ChatEventInviteLinkDeleted: Codable {

    /// The invite link
    public let inviteLink: ChatInviteLink


    public init(inviteLink: ChatInviteLink) {
        self.inviteLink = inviteLink
    }
}

/// A voice chat was created
public struct ChatEventVoiceChatCreated: Codable {

    /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// A voice chat was discarded
public struct ChatEventVoiceChatDiscarded: Codable {

    /// Identifier of the voice chat. The voice chat can be received through the method getGroupCall
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

/// A voice chat participant was muted or unmuted
public struct ChatEventVoiceChatParticipantIsMutedToggled: Codable {

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

/// A voice chat participant volume level was changed
public struct ChatEventVoiceChatParticipantVolumeLevelChanged: Codable {

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

/// The mute_new_participants setting of a voice chat was toggled
public struct ChatEventVoiceChatMuteNewParticipantsToggled: Codable {

    /// New value of the mute_new_participants setting
    public let muteNewParticipants: Bool


    public init(muteNewParticipants: Bool) {
        self.muteNewParticipants = muteNewParticipants
    }
}


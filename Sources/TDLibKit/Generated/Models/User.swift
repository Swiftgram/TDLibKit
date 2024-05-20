//
//  User.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a user
public struct User: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only
    public let accentColorId: Int

    /// True, if the user added the current bot to attachment menu; only available to bots
    public let addedToAttachmentMenu: Bool

    /// Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. For Telegram Premium users only
    public let backgroundCustomEmojiId: TdInt64

    /// Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
    public let emojiStatus: EmojiStatus?

    /// First name of the user
    public let firstName: String

    /// True, if the user has non-expired stories available to the current user
    public let hasActiveStories: Bool

    /// True, if the user has unread non-expired stories available to the current user
    public let hasUnreadActiveStories: Bool

    /// If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method
    public let haveAccess: Bool

    /// User identifier
    public let id: Int64

    /// The user is a close friend of the current user; implies that the user is a contact
    public let isCloseFriend: Bool

    /// The user is a contact of the current user
    public let isContact: Bool

    /// True, if many users reported this user as a fake account
    public let isFake: Bool

    /// The user is a contact of the current user and the current user is a contact of the user
    public let isMutualContact: Bool

    /// True, if the user is a Telegram Premium user
    public let isPremium: Bool

    /// True, if many users reported this user as a scam
    public let isScam: Bool

    /// True, if the user is Telegram support account
    public let isSupport: Bool

    /// True, if the user is verified
    public let isVerified: Bool

    /// IETF language tag of the user's language; only available to bots
    public let languageCode: String

    /// Last name of the user
    public let lastName: String

    /// Phone number of the user
    public let phoneNumber: String

    /// Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only
    public let profileAccentColorId: Int

    /// Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only
    public let profileBackgroundCustomEmojiId: TdInt64

    /// Profile photo of the user; may be null
    public let profilePhoto: ProfilePhoto?

    /// If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
    public let restrictionReason: String

    /// True, if the user may restrict new chats with non-contacts. Use canSendMessageToUser to check whether the current user can message the user or try to create a chat with them
    public let restrictsNewChats: Bool

    /// Current online status of the user
    public let status: UserStatus

    /// Type of the user
    public let type: UserType

    /// Usernames of the user; may be null
    public let usernames: Usernames?


    public init(
        accentColorId: Int,
        addedToAttachmentMenu: Bool,
        backgroundCustomEmojiId: TdInt64,
        emojiStatus: EmojiStatus?,
        firstName: String,
        hasActiveStories: Bool,
        hasUnreadActiveStories: Bool,
        haveAccess: Bool,
        id: Int64,
        isCloseFriend: Bool,
        isContact: Bool,
        isFake: Bool,
        isMutualContact: Bool,
        isPremium: Bool,
        isScam: Bool,
        isSupport: Bool,
        isVerified: Bool,
        languageCode: String,
        lastName: String,
        phoneNumber: String,
        profileAccentColorId: Int,
        profileBackgroundCustomEmojiId: TdInt64,
        profilePhoto: ProfilePhoto?,
        restrictionReason: String,
        restrictsNewChats: Bool,
        status: UserStatus,
        type: UserType,
        usernames: Usernames?
    ) {
        self.accentColorId = accentColorId
        self.addedToAttachmentMenu = addedToAttachmentMenu
        self.backgroundCustomEmojiId = backgroundCustomEmojiId
        self.emojiStatus = emojiStatus
        self.firstName = firstName
        self.hasActiveStories = hasActiveStories
        self.hasUnreadActiveStories = hasUnreadActiveStories
        self.haveAccess = haveAccess
        self.id = id
        self.isCloseFriend = isCloseFriend
        self.isContact = isContact
        self.isFake = isFake
        self.isMutualContact = isMutualContact
        self.isPremium = isPremium
        self.isScam = isScam
        self.isSupport = isSupport
        self.isVerified = isVerified
        self.languageCode = languageCode
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.profileAccentColorId = profileAccentColorId
        self.profileBackgroundCustomEmojiId = profileBackgroundCustomEmojiId
        self.profilePhoto = profilePhoto
        self.restrictionReason = restrictionReason
        self.restrictsNewChats = restrictsNewChats
        self.status = status
        self.type = type
        self.usernames = usernames
    }
}


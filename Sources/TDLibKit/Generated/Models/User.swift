//
//  User.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Represents a user
public struct User: Codable, Equatable {

    /// True, if the user added the current bot to attachment menu; only available to bots
    public let addedToAttachmentMenu: Bool

    /// Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
    public let emojiStatus: EmojiStatus?

    /// First name of the user
    public let firstName: String

    /// If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method
    public let haveAccess: Bool

    /// User identifier
    public let id: Int64

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

    /// Profile photo of the user; may be null
    public let profilePhoto: ProfilePhoto?

    /// If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
    public let restrictionReason: String

    /// Current online status of the user
    public let status: UserStatus

    /// Type of the user
    public let type: UserType

    /// Usernames of the user; may be null
    public let usernames: Usernames?


    public init(
        addedToAttachmentMenu: Bool,
        emojiStatus: EmojiStatus?,
        firstName: String,
        haveAccess: Bool,
        id: Int64,
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
        profilePhoto: ProfilePhoto?,
        restrictionReason: String,
        status: UserStatus,
        type: UserType,
        usernames: Usernames?
    ) {
        self.addedToAttachmentMenu = addedToAttachmentMenu
        self.emojiStatus = emojiStatus
        self.firstName = firstName
        self.haveAccess = haveAccess
        self.id = id
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
        self.profilePhoto = profilePhoto
        self.restrictionReason = restrictionReason
        self.status = status
        self.type = type
        self.usernames = usernames
    }
}


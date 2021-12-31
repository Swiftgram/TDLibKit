//
//  UserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-c0385078
//  https://github.com/tdlib/td/tree/c0385078
//

import Foundation


/// Contains full information about a user
public struct UserFullInfo: Codable, Equatable {

    /// A short user bio
    public let bio: String

    /// True, if the user can be called
    public let canBeCalled: Bool

    /// For bots, list of the bot commands
    public let commands: [BotCommand]

    public let description: String

    /// Number of group chats where both the other user and the current user are a member; 0 for the current user
    public let groupInCommonCount: Int

    /// True, if the user can't be called due to their privacy settings
    public let hasPrivateCalls: Bool

    /// True, if the user can't be linked in forwarded messages due to their privacy settings
    public let hasPrivateForwards: Bool

    /// True, if the user is blocked by the current user
    public let isBlocked: Bool

    /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
    public let needPhoneNumberPrivacyException: Bool

    /// User profile photo; may be null
    public let photo: ChatPhoto?

    /// For bots, the text that is shown on the bot's profile page and is sent together with the link when users share the bot
    public let shareText: String

    /// True, if a video call can be created with the user
    public let supportsVideoCalls: Bool


    public init(
        bio: String,
        canBeCalled: Bool,
        commands: [BotCommand],
        description: String,
        groupInCommonCount: Int,
        hasPrivateCalls: Bool,
        hasPrivateForwards: Bool,
        isBlocked: Bool,
        needPhoneNumberPrivacyException: Bool,
        photo: ChatPhoto?,
        shareText: String,
        supportsVideoCalls: Bool
    ) {
        self.bio = bio
        self.canBeCalled = canBeCalled
        self.commands = commands
        self.description = description
        self.groupInCommonCount = groupInCommonCount
        self.hasPrivateCalls = hasPrivateCalls
        self.hasPrivateForwards = hasPrivateForwards
        self.isBlocked = isBlocked
        self.needPhoneNumberPrivacyException = needPhoneNumberPrivacyException
        self.photo = photo
        self.shareText = shareText
        self.supportsVideoCalls = supportsVideoCalls
    }
}


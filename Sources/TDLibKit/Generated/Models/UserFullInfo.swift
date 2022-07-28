//
//  UserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains full information about a user
public struct UserFullInfo: Codable, Equatable {

    /// A short user bio; may be null for bots
    public let bio: FormattedText?

    /// For bots, information about the bot; may be null
    public let botInfo: BotInfo?

    /// True, if the user can be called
    public let canBeCalled: Bool

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

    /// True, if a video call can be created with the user
    public let supportsVideoCalls: Bool


    public init(
        bio: FormattedText?,
        botInfo: BotInfo?,
        canBeCalled: Bool,
        groupInCommonCount: Int,
        hasPrivateCalls: Bool,
        hasPrivateForwards: Bool,
        isBlocked: Bool,
        needPhoneNumberPrivacyException: Bool,
        photo: ChatPhoto?,
        supportsVideoCalls: Bool
    ) {
        self.bio = bio
        self.botInfo = botInfo
        self.canBeCalled = canBeCalled
        self.groupInCommonCount = groupInCommonCount
        self.hasPrivateCalls = hasPrivateCalls
        self.hasPrivateForwards = hasPrivateForwards
        self.isBlocked = isBlocked
        self.needPhoneNumberPrivacyException = needPhoneNumberPrivacyException
        self.photo = photo
        self.supportsVideoCalls = supportsVideoCalls
    }
}


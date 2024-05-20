//
//  UserFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains full information about a user
public struct UserFullInfo: Codable, Equatable, Hashable {

    /// A short user bio; may be null for bots
    public let bio: FormattedText?

    /// Birthdate of the user; may be null if unknown
    public let birthdate: Birthdate?

    /// Block list to which the user is added; may be null if none
    public let blockList: BlockList?

    /// For bots, information about the bot; may be null if the user isn't a bot
    public let botInfo: BotInfo?

    /// Information about business settings for Telegram Business accounts; may be null if none
    public let businessInfo: BusinessInfo?

    /// True, if the user can be called
    public let canBeCalled: Bool

    /// Number of group chats where both the other user and the current user are a member; 0 for the current user
    public let groupInCommonCount: Int

    /// True, if the user has posted to profile stories
    public let hasPostedToProfileStories: Bool

    /// True, if the user can't be called due to their privacy settings
    public let hasPrivateCalls: Bool

    /// True, if the user can't be linked in forwarded messages due to their privacy settings
    public let hasPrivateForwards: Bool

    /// True, if voice and video notes can't be sent or forwarded to the user
    public let hasRestrictedVoiceAndVideoNoteMessages: Bool

    /// True, if the user always enabled sponsored messages; known only for the current user
    public let hasSponsoredMessagesEnabled: Bool

    /// True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
    public let needPhoneNumberPrivacyException: Bool

    /// Identifier of the personal chat of the user; 0 if none
    public let personalChatId: Int64

    /// User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
    public let personalPhoto: ChatPhoto?

    /// User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo
    public let photo: ChatPhoto?

    /// The list of available options for gifting Telegram Premium to the user
    public let premiumGiftOptions: [PremiumPaymentOption]

    /// User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos
    public let publicPhoto: ChatPhoto?

    /// True, if the user set chat background for both chat users and it wasn't reverted yet
    public let setChatBackground: Bool

    /// True, if a video call can be created with the user
    public let supportsVideoCalls: Bool


    public init(
        bio: FormattedText?,
        birthdate: Birthdate?,
        blockList: BlockList?,
        botInfo: BotInfo?,
        businessInfo: BusinessInfo?,
        canBeCalled: Bool,
        groupInCommonCount: Int,
        hasPostedToProfileStories: Bool,
        hasPrivateCalls: Bool,
        hasPrivateForwards: Bool,
        hasRestrictedVoiceAndVideoNoteMessages: Bool,
        hasSponsoredMessagesEnabled: Bool,
        needPhoneNumberPrivacyException: Bool,
        personalChatId: Int64,
        personalPhoto: ChatPhoto?,
        photo: ChatPhoto?,
        premiumGiftOptions: [PremiumPaymentOption],
        publicPhoto: ChatPhoto?,
        setChatBackground: Bool,
        supportsVideoCalls: Bool
    ) {
        self.bio = bio
        self.birthdate = birthdate
        self.blockList = blockList
        self.botInfo = botInfo
        self.businessInfo = businessInfo
        self.canBeCalled = canBeCalled
        self.groupInCommonCount = groupInCommonCount
        self.hasPostedToProfileStories = hasPostedToProfileStories
        self.hasPrivateCalls = hasPrivateCalls
        self.hasPrivateForwards = hasPrivateForwards
        self.hasRestrictedVoiceAndVideoNoteMessages = hasRestrictedVoiceAndVideoNoteMessages
        self.hasSponsoredMessagesEnabled = hasSponsoredMessagesEnabled
        self.needPhoneNumberPrivacyException = needPhoneNumberPrivacyException
        self.personalChatId = personalChatId
        self.personalPhoto = personalPhoto
        self.photo = photo
        self.premiumGiftOptions = premiumGiftOptions
        self.publicPhoto = publicPhoto
        self.setChatBackground = setChatBackground
        self.supportsVideoCalls = supportsVideoCalls
    }
}


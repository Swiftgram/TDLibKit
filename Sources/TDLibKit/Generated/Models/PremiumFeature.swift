//
//  PremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a feature available to Premium users
public indirect enum PremiumFeature: Codable, Equatable, Hashable {

    /// Increased limits
    case premiumFeatureIncreasedLimits

    /// Increased maximum upload file size
    case premiumFeatureIncreasedUploadFileSize

    /// Improved download speed
    case premiumFeatureImprovedDownloadSpeed

    /// The ability to convert voice notes to text
    case premiumFeatureVoiceRecognition

    /// Disabled ads
    case premiumFeatureDisabledAds

    /// Allowed to use more reactions
    case premiumFeatureUniqueReactions

    /// Allowed to use premium stickers with unique effects
    case premiumFeatureUniqueStickers

    /// Allowed to use custom emoji stickers in message texts and captions
    case premiumFeatureCustomEmoji

    /// Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram
    case premiumFeatureAdvancedChatManagement

    /// A badge in the user's profile
    case premiumFeatureProfileBadge

    /// The ability to show an emoji status along with the user's name
    case premiumFeatureEmojiStatus

    /// Profile photo animation on message and chat screens
    case premiumFeatureAnimatedProfilePhoto

    /// The ability to set a custom emoji as a forum topic icon
    case premiumFeatureForumTopicIcon

    /// Allowed to set a premium application icons
    case premiumFeatureAppIcons

    /// Allowed to translate chat messages real-time
    case premiumFeatureRealTimeChatTranslation

    /// Allowed to use many additional features for stories
    case premiumFeatureUpgradedStories

    /// The ability to boost chats
    case premiumFeatureChatBoost

    /// The ability to choose accent color for replies and user profile
    case premiumFeatureAccentColor

    /// The ability to set private chat background for both users
    case premiumFeatureBackgroundForBoth

    /// The ability to use tags in Saved Messages
    case premiumFeatureSavedMessagesTags

    /// The ability to disallow incoming voice and video note messages in private chats using setUserPrivacySettingRules with userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages and to restrict incoming messages from non-contacts using setNewChatPrivacySettings
    case premiumFeatureMessagePrivacy

    /// The ability to view last seen and read times of other users even they can't view last seen or read time for the current user
    case premiumFeatureLastSeenTimes

    /// The ability to use Business features
    case premiumFeatureBusiness


    private enum Kind: String, Codable {
        case premiumFeatureIncreasedLimits
        case premiumFeatureIncreasedUploadFileSize
        case premiumFeatureImprovedDownloadSpeed
        case premiumFeatureVoiceRecognition
        case premiumFeatureDisabledAds
        case premiumFeatureUniqueReactions
        case premiumFeatureUniqueStickers
        case premiumFeatureCustomEmoji
        case premiumFeatureAdvancedChatManagement
        case premiumFeatureProfileBadge
        case premiumFeatureEmojiStatus
        case premiumFeatureAnimatedProfilePhoto
        case premiumFeatureForumTopicIcon
        case premiumFeatureAppIcons
        case premiumFeatureRealTimeChatTranslation
        case premiumFeatureUpgradedStories
        case premiumFeatureChatBoost
        case premiumFeatureAccentColor
        case premiumFeatureBackgroundForBoth
        case premiumFeatureSavedMessagesTags
        case premiumFeatureMessagePrivacy
        case premiumFeatureLastSeenTimes
        case premiumFeatureBusiness
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumFeatureIncreasedLimits:
            self = .premiumFeatureIncreasedLimits
        case .premiumFeatureIncreasedUploadFileSize:
            self = .premiumFeatureIncreasedUploadFileSize
        case .premiumFeatureImprovedDownloadSpeed:
            self = .premiumFeatureImprovedDownloadSpeed
        case .premiumFeatureVoiceRecognition:
            self = .premiumFeatureVoiceRecognition
        case .premiumFeatureDisabledAds:
            self = .premiumFeatureDisabledAds
        case .premiumFeatureUniqueReactions:
            self = .premiumFeatureUniqueReactions
        case .premiumFeatureUniqueStickers:
            self = .premiumFeatureUniqueStickers
        case .premiumFeatureCustomEmoji:
            self = .premiumFeatureCustomEmoji
        case .premiumFeatureAdvancedChatManagement:
            self = .premiumFeatureAdvancedChatManagement
        case .premiumFeatureProfileBadge:
            self = .premiumFeatureProfileBadge
        case .premiumFeatureEmojiStatus:
            self = .premiumFeatureEmojiStatus
        case .premiumFeatureAnimatedProfilePhoto:
            self = .premiumFeatureAnimatedProfilePhoto
        case .premiumFeatureForumTopicIcon:
            self = .premiumFeatureForumTopicIcon
        case .premiumFeatureAppIcons:
            self = .premiumFeatureAppIcons
        case .premiumFeatureRealTimeChatTranslation:
            self = .premiumFeatureRealTimeChatTranslation
        case .premiumFeatureUpgradedStories:
            self = .premiumFeatureUpgradedStories
        case .premiumFeatureChatBoost:
            self = .premiumFeatureChatBoost
        case .premiumFeatureAccentColor:
            self = .premiumFeatureAccentColor
        case .premiumFeatureBackgroundForBoth:
            self = .premiumFeatureBackgroundForBoth
        case .premiumFeatureSavedMessagesTags:
            self = .premiumFeatureSavedMessagesTags
        case .premiumFeatureMessagePrivacy:
            self = .premiumFeatureMessagePrivacy
        case .premiumFeatureLastSeenTimes:
            self = .premiumFeatureLastSeenTimes
        case .premiumFeatureBusiness:
            self = .premiumFeatureBusiness
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumFeatureIncreasedLimits:
            try container.encode(Kind.premiumFeatureIncreasedLimits, forKey: .type)
        case .premiumFeatureIncreasedUploadFileSize:
            try container.encode(Kind.premiumFeatureIncreasedUploadFileSize, forKey: .type)
        case .premiumFeatureImprovedDownloadSpeed:
            try container.encode(Kind.premiumFeatureImprovedDownloadSpeed, forKey: .type)
        case .premiumFeatureVoiceRecognition:
            try container.encode(Kind.premiumFeatureVoiceRecognition, forKey: .type)
        case .premiumFeatureDisabledAds:
            try container.encode(Kind.premiumFeatureDisabledAds, forKey: .type)
        case .premiumFeatureUniqueReactions:
            try container.encode(Kind.premiumFeatureUniqueReactions, forKey: .type)
        case .premiumFeatureUniqueStickers:
            try container.encode(Kind.premiumFeatureUniqueStickers, forKey: .type)
        case .premiumFeatureCustomEmoji:
            try container.encode(Kind.premiumFeatureCustomEmoji, forKey: .type)
        case .premiumFeatureAdvancedChatManagement:
            try container.encode(Kind.premiumFeatureAdvancedChatManagement, forKey: .type)
        case .premiumFeatureProfileBadge:
            try container.encode(Kind.premiumFeatureProfileBadge, forKey: .type)
        case .premiumFeatureEmojiStatus:
            try container.encode(Kind.premiumFeatureEmojiStatus, forKey: .type)
        case .premiumFeatureAnimatedProfilePhoto:
            try container.encode(Kind.premiumFeatureAnimatedProfilePhoto, forKey: .type)
        case .premiumFeatureForumTopicIcon:
            try container.encode(Kind.premiumFeatureForumTopicIcon, forKey: .type)
        case .premiumFeatureAppIcons:
            try container.encode(Kind.premiumFeatureAppIcons, forKey: .type)
        case .premiumFeatureRealTimeChatTranslation:
            try container.encode(Kind.premiumFeatureRealTimeChatTranslation, forKey: .type)
        case .premiumFeatureUpgradedStories:
            try container.encode(Kind.premiumFeatureUpgradedStories, forKey: .type)
        case .premiumFeatureChatBoost:
            try container.encode(Kind.premiumFeatureChatBoost, forKey: .type)
        case .premiumFeatureAccentColor:
            try container.encode(Kind.premiumFeatureAccentColor, forKey: .type)
        case .premiumFeatureBackgroundForBoth:
            try container.encode(Kind.premiumFeatureBackgroundForBoth, forKey: .type)
        case .premiumFeatureSavedMessagesTags:
            try container.encode(Kind.premiumFeatureSavedMessagesTags, forKey: .type)
        case .premiumFeatureMessagePrivacy:
            try container.encode(Kind.premiumFeatureMessagePrivacy, forKey: .type)
        case .premiumFeatureLastSeenTimes:
            try container.encode(Kind.premiumFeatureLastSeenTimes, forKey: .type)
        case .premiumFeatureBusiness:
            try container.encode(Kind.premiumFeatureBusiness, forKey: .type)
        }
    }
}


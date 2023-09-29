//
//  PremiumFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-97ec3eac
//  https://github.com/tdlib/td/tree/97ec3eac
//

import Foundation


/// Describes a feature available to Premium users
public enum PremiumFeature: Codable, Equatable, Hashable {

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

    /// An emoji status shown along with the user's name
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
        }
    }
}


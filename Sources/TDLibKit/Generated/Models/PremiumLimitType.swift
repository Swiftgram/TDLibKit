//
//  PremiumLimitType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Describes type of limit, increased for Premium users
public indirect enum PremiumLimitType: Codable, Equatable, Hashable {

    /// The maximum number of joined supergroups and channels
    case premiumLimitTypeSupergroupCount

    /// The maximum number of pinned chats in the main chat list
    case premiumLimitTypePinnedChatCount

    /// The maximum number of created public chats
    case premiumLimitTypeCreatedPublicChatCount

    /// The maximum number of saved animations
    case premiumLimitTypeSavedAnimationCount

    /// The maximum number of favorite stickers
    case premiumLimitTypeFavoriteStickerCount

    /// The maximum number of chat folders
    case premiumLimitTypeChatFolderCount

    /// The maximum number of pinned and always included, or always excluded chats in a chat folder
    case premiumLimitTypeChatFolderChosenChatCount

    /// The maximum number of pinned chats in the archive chat list
    case premiumLimitTypePinnedArchivedChatCount

    /// The maximum number of pinned Saved Messages topics
    case premiumLimitTypePinnedSavedMessagesTopicCount

    /// The maximum length of sent media caption
    case premiumLimitTypeCaptionLength

    /// The maximum length of the user's bio
    case premiumLimitTypeBioLength

    /// The maximum number of invite links for a chat folder
    case premiumLimitTypeChatFolderInviteLinkCount

    /// The maximum number of added shareable chat folders
    case premiumLimitTypeShareableChatFolderCount

    /// The maximum number of active stories
    case premiumLimitTypeActiveStoryCount

    /// The maximum number of stories posted per week
    case premiumLimitTypeWeeklyPostedStoryCount

    /// The maximum number of stories posted per month
    case premiumLimitTypeMonthlyPostedStoryCount

    /// The maximum length of captions of posted stories
    case premiumLimitTypeStoryCaptionLength

    /// The maximum number of suggested reaction areas on a story
    case premiumLimitTypeStorySuggestedReactionAreaCount

    /// The maximum number of received similar chats
    case premiumLimitTypeSimilarChatCount


    private enum Kind: String, Codable {
        case premiumLimitTypeSupergroupCount
        case premiumLimitTypePinnedChatCount
        case premiumLimitTypeCreatedPublicChatCount
        case premiumLimitTypeSavedAnimationCount
        case premiumLimitTypeFavoriteStickerCount
        case premiumLimitTypeChatFolderCount
        case premiumLimitTypeChatFolderChosenChatCount
        case premiumLimitTypePinnedArchivedChatCount
        case premiumLimitTypePinnedSavedMessagesTopicCount
        case premiumLimitTypeCaptionLength
        case premiumLimitTypeBioLength
        case premiumLimitTypeChatFolderInviteLinkCount
        case premiumLimitTypeShareableChatFolderCount
        case premiumLimitTypeActiveStoryCount
        case premiumLimitTypeWeeklyPostedStoryCount
        case premiumLimitTypeMonthlyPostedStoryCount
        case premiumLimitTypeStoryCaptionLength
        case premiumLimitTypeStorySuggestedReactionAreaCount
        case premiumLimitTypeSimilarChatCount
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumLimitTypeSupergroupCount:
            self = .premiumLimitTypeSupergroupCount
        case .premiumLimitTypePinnedChatCount:
            self = .premiumLimitTypePinnedChatCount
        case .premiumLimitTypeCreatedPublicChatCount:
            self = .premiumLimitTypeCreatedPublicChatCount
        case .premiumLimitTypeSavedAnimationCount:
            self = .premiumLimitTypeSavedAnimationCount
        case .premiumLimitTypeFavoriteStickerCount:
            self = .premiumLimitTypeFavoriteStickerCount
        case .premiumLimitTypeChatFolderCount:
            self = .premiumLimitTypeChatFolderCount
        case .premiumLimitTypeChatFolderChosenChatCount:
            self = .premiumLimitTypeChatFolderChosenChatCount
        case .premiumLimitTypePinnedArchivedChatCount:
            self = .premiumLimitTypePinnedArchivedChatCount
        case .premiumLimitTypePinnedSavedMessagesTopicCount:
            self = .premiumLimitTypePinnedSavedMessagesTopicCount
        case .premiumLimitTypeCaptionLength:
            self = .premiumLimitTypeCaptionLength
        case .premiumLimitTypeBioLength:
            self = .premiumLimitTypeBioLength
        case .premiumLimitTypeChatFolderInviteLinkCount:
            self = .premiumLimitTypeChatFolderInviteLinkCount
        case .premiumLimitTypeShareableChatFolderCount:
            self = .premiumLimitTypeShareableChatFolderCount
        case .premiumLimitTypeActiveStoryCount:
            self = .premiumLimitTypeActiveStoryCount
        case .premiumLimitTypeWeeklyPostedStoryCount:
            self = .premiumLimitTypeWeeklyPostedStoryCount
        case .premiumLimitTypeMonthlyPostedStoryCount:
            self = .premiumLimitTypeMonthlyPostedStoryCount
        case .premiumLimitTypeStoryCaptionLength:
            self = .premiumLimitTypeStoryCaptionLength
        case .premiumLimitTypeStorySuggestedReactionAreaCount:
            self = .premiumLimitTypeStorySuggestedReactionAreaCount
        case .premiumLimitTypeSimilarChatCount:
            self = .premiumLimitTypeSimilarChatCount
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumLimitTypeSupergroupCount:
            try container.encode(Kind.premiumLimitTypeSupergroupCount, forKey: .type)
        case .premiumLimitTypePinnedChatCount:
            try container.encode(Kind.premiumLimitTypePinnedChatCount, forKey: .type)
        case .premiumLimitTypeCreatedPublicChatCount:
            try container.encode(Kind.premiumLimitTypeCreatedPublicChatCount, forKey: .type)
        case .premiumLimitTypeSavedAnimationCount:
            try container.encode(Kind.premiumLimitTypeSavedAnimationCount, forKey: .type)
        case .premiumLimitTypeFavoriteStickerCount:
            try container.encode(Kind.premiumLimitTypeFavoriteStickerCount, forKey: .type)
        case .premiumLimitTypeChatFolderCount:
            try container.encode(Kind.premiumLimitTypeChatFolderCount, forKey: .type)
        case .premiumLimitTypeChatFolderChosenChatCount:
            try container.encode(Kind.premiumLimitTypeChatFolderChosenChatCount, forKey: .type)
        case .premiumLimitTypePinnedArchivedChatCount:
            try container.encode(Kind.premiumLimitTypePinnedArchivedChatCount, forKey: .type)
        case .premiumLimitTypePinnedSavedMessagesTopicCount:
            try container.encode(Kind.premiumLimitTypePinnedSavedMessagesTopicCount, forKey: .type)
        case .premiumLimitTypeCaptionLength:
            try container.encode(Kind.premiumLimitTypeCaptionLength, forKey: .type)
        case .premiumLimitTypeBioLength:
            try container.encode(Kind.premiumLimitTypeBioLength, forKey: .type)
        case .premiumLimitTypeChatFolderInviteLinkCount:
            try container.encode(Kind.premiumLimitTypeChatFolderInviteLinkCount, forKey: .type)
        case .premiumLimitTypeShareableChatFolderCount:
            try container.encode(Kind.premiumLimitTypeShareableChatFolderCount, forKey: .type)
        case .premiumLimitTypeActiveStoryCount:
            try container.encode(Kind.premiumLimitTypeActiveStoryCount, forKey: .type)
        case .premiumLimitTypeWeeklyPostedStoryCount:
            try container.encode(Kind.premiumLimitTypeWeeklyPostedStoryCount, forKey: .type)
        case .premiumLimitTypeMonthlyPostedStoryCount:
            try container.encode(Kind.premiumLimitTypeMonthlyPostedStoryCount, forKey: .type)
        case .premiumLimitTypeStoryCaptionLength:
            try container.encode(Kind.premiumLimitTypeStoryCaptionLength, forKey: .type)
        case .premiumLimitTypeStorySuggestedReactionAreaCount:
            try container.encode(Kind.premiumLimitTypeStorySuggestedReactionAreaCount, forKey: .type)
        case .premiumLimitTypeSimilarChatCount:
            try container.encode(Kind.premiumLimitTypeSimilarChatCount, forKey: .type)
        }
    }
}


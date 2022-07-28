//
//  PremiumLimitType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes type of a limit, increased for Premium users
public enum PremiumLimitType: Codable, Equatable {

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

    /// The maximum number of chat filters
    case premiumLimitTypeChatFilterCount

    /// The maximum number of pinned and always included, or always excluded chats in a chat filter
    case premiumLimitTypeChatFilterChosenChatCount

    /// The maximum number of pinned chats in the archive chat list
    case premiumLimitTypePinnedArchivedChatCount

    /// The maximum length of sent media caption
    case premiumLimitTypeCaptionLength

    /// The maximum length of the user's bio
    case premiumLimitTypeBioLength


    private enum Kind: String, Codable {
        case premiumLimitTypeSupergroupCount
        case premiumLimitTypePinnedChatCount
        case premiumLimitTypeCreatedPublicChatCount
        case premiumLimitTypeSavedAnimationCount
        case premiumLimitTypeFavoriteStickerCount
        case premiumLimitTypeChatFilterCount
        case premiumLimitTypeChatFilterChosenChatCount
        case premiumLimitTypePinnedArchivedChatCount
        case premiumLimitTypeCaptionLength
        case premiumLimitTypeBioLength
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
        case .premiumLimitTypeChatFilterCount:
            self = .premiumLimitTypeChatFilterCount
        case .premiumLimitTypeChatFilterChosenChatCount:
            self = .premiumLimitTypeChatFilterChosenChatCount
        case .premiumLimitTypePinnedArchivedChatCount:
            self = .premiumLimitTypePinnedArchivedChatCount
        case .premiumLimitTypeCaptionLength:
            self = .premiumLimitTypeCaptionLength
        case .premiumLimitTypeBioLength:
            self = .premiumLimitTypeBioLength
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
        case .premiumLimitTypeChatFilterCount:
            try container.encode(Kind.premiumLimitTypeChatFilterCount, forKey: .type)
        case .premiumLimitTypeChatFilterChosenChatCount:
            try container.encode(Kind.premiumLimitTypeChatFilterChosenChatCount, forKey: .type)
        case .premiumLimitTypePinnedArchivedChatCount:
            try container.encode(Kind.premiumLimitTypePinnedArchivedChatCount, forKey: .type)
        case .premiumLimitTypeCaptionLength:
            try container.encode(Kind.premiumLimitTypeCaptionLength, forKey: .type)
        case .premiumLimitTypeBioLength:
            try container.encode(Kind.premiumLimitTypeBioLength, forKey: .type)
        }
    }
}


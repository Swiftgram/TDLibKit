//
//  PremiumStoryFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a story feature available to Premium users
public indirect enum PremiumStoryFeature: Codable, Equatable, Hashable {

    /// Stories of the current user are displayed before stories of non-Premium contacts, supergroups, and channels
    case premiumStoryFeaturePriorityOrder

    /// The ability to hide the fact that the user viewed other's stories
    case premiumStoryFeatureStealthMode

    /// The ability to check who opened the current user's stories after they expire
    case premiumStoryFeaturePermanentViewsHistory

    /// The ability to set custom expiration duration for stories
    case premiumStoryFeatureCustomExpirationDuration

    /// The ability to save other's unprotected stories
    case premiumStoryFeatureSaveStories

    /// The ability to use links and formatting in story caption
    case premiumStoryFeatureLinksAndFormatting

    /// The ability to choose better quality for viewed stories
    case premiumStoryFeatureVideoQuality


    private enum Kind: String, Codable {
        case premiumStoryFeaturePriorityOrder
        case premiumStoryFeatureStealthMode
        case premiumStoryFeaturePermanentViewsHistory
        case premiumStoryFeatureCustomExpirationDuration
        case premiumStoryFeatureSaveStories
        case premiumStoryFeatureLinksAndFormatting
        case premiumStoryFeatureVideoQuality
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumStoryFeaturePriorityOrder:
            self = .premiumStoryFeaturePriorityOrder
        case .premiumStoryFeatureStealthMode:
            self = .premiumStoryFeatureStealthMode
        case .premiumStoryFeaturePermanentViewsHistory:
            self = .premiumStoryFeaturePermanentViewsHistory
        case .premiumStoryFeatureCustomExpirationDuration:
            self = .premiumStoryFeatureCustomExpirationDuration
        case .premiumStoryFeatureSaveStories:
            self = .premiumStoryFeatureSaveStories
        case .premiumStoryFeatureLinksAndFormatting:
            self = .premiumStoryFeatureLinksAndFormatting
        case .premiumStoryFeatureVideoQuality:
            self = .premiumStoryFeatureVideoQuality
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumStoryFeaturePriorityOrder:
            try container.encode(Kind.premiumStoryFeaturePriorityOrder, forKey: .type)
        case .premiumStoryFeatureStealthMode:
            try container.encode(Kind.premiumStoryFeatureStealthMode, forKey: .type)
        case .premiumStoryFeaturePermanentViewsHistory:
            try container.encode(Kind.premiumStoryFeaturePermanentViewsHistory, forKey: .type)
        case .premiumStoryFeatureCustomExpirationDuration:
            try container.encode(Kind.premiumStoryFeatureCustomExpirationDuration, forKey: .type)
        case .premiumStoryFeatureSaveStories:
            try container.encode(Kind.premiumStoryFeatureSaveStories, forKey: .type)
        case .premiumStoryFeatureLinksAndFormatting:
            try container.encode(Kind.premiumStoryFeatureLinksAndFormatting, forKey: .type)
        case .premiumStoryFeatureVideoQuality:
            try container.encode(Kind.premiumStoryFeatureVideoQuality, forKey: .type)
        }
    }
}


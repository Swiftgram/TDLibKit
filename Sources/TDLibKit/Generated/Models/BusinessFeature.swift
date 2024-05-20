//
//  BusinessFeature.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a feature available to Business user accounts
public indirect enum BusinessFeature: Codable, Equatable, Hashable {

    /// The ability to set location
    case businessFeatureLocation

    /// The ability to set opening hours
    case businessFeatureOpeningHours

    /// The ability to use quick replies
    case businessFeatureQuickReplies

    /// The ability to set up a greeting message
    case businessFeatureGreetingMessage

    /// The ability to set up an away message
    case businessFeatureAwayMessage

    /// The ability to create links to the business account with predefined message text
    case businessFeatureAccountLinks

    /// The ability to customize start page
    case businessFeatureStartPage

    /// The ability to connect a bot to the account
    case businessFeatureBots

    /// The ability to show an emoji status along with the business name
    case businessFeatureEmojiStatus

    /// The ability to display folder names for each chat in the chat list
    case businessFeatureChatFolderTags

    /// Allowed to use many additional features for stories
    case businessFeatureUpgradedStories


    private enum Kind: String, Codable {
        case businessFeatureLocation
        case businessFeatureOpeningHours
        case businessFeatureQuickReplies
        case businessFeatureGreetingMessage
        case businessFeatureAwayMessage
        case businessFeatureAccountLinks
        case businessFeatureStartPage
        case businessFeatureBots
        case businessFeatureEmojiStatus
        case businessFeatureChatFolderTags
        case businessFeatureUpgradedStories
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .businessFeatureLocation:
            self = .businessFeatureLocation
        case .businessFeatureOpeningHours:
            self = .businessFeatureOpeningHours
        case .businessFeatureQuickReplies:
            self = .businessFeatureQuickReplies
        case .businessFeatureGreetingMessage:
            self = .businessFeatureGreetingMessage
        case .businessFeatureAwayMessage:
            self = .businessFeatureAwayMessage
        case .businessFeatureAccountLinks:
            self = .businessFeatureAccountLinks
        case .businessFeatureStartPage:
            self = .businessFeatureStartPage
        case .businessFeatureBots:
            self = .businessFeatureBots
        case .businessFeatureEmojiStatus:
            self = .businessFeatureEmojiStatus
        case .businessFeatureChatFolderTags:
            self = .businessFeatureChatFolderTags
        case .businessFeatureUpgradedStories:
            self = .businessFeatureUpgradedStories
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .businessFeatureLocation:
            try container.encode(Kind.businessFeatureLocation, forKey: .type)
        case .businessFeatureOpeningHours:
            try container.encode(Kind.businessFeatureOpeningHours, forKey: .type)
        case .businessFeatureQuickReplies:
            try container.encode(Kind.businessFeatureQuickReplies, forKey: .type)
        case .businessFeatureGreetingMessage:
            try container.encode(Kind.businessFeatureGreetingMessage, forKey: .type)
        case .businessFeatureAwayMessage:
            try container.encode(Kind.businessFeatureAwayMessage, forKey: .type)
        case .businessFeatureAccountLinks:
            try container.encode(Kind.businessFeatureAccountLinks, forKey: .type)
        case .businessFeatureStartPage:
            try container.encode(Kind.businessFeatureStartPage, forKey: .type)
        case .businessFeatureBots:
            try container.encode(Kind.businessFeatureBots, forKey: .type)
        case .businessFeatureEmojiStatus:
            try container.encode(Kind.businessFeatureEmojiStatus, forKey: .type)
        case .businessFeatureChatFolderTags:
            try container.encode(Kind.businessFeatureChatFolderTags, forKey: .type)
        case .businessFeatureUpgradedStories:
            try container.encode(Kind.businessFeatureUpgradedStories, forKey: .type)
        }
    }
}


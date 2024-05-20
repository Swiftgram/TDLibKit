//
//  PremiumSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a source from which the Premium features screen is opened
public indirect enum PremiumSource: Codable, Equatable, Hashable {

    /// A limit was exceeded
    case premiumSourceLimitExceeded(PremiumSourceLimitExceeded)

    /// A user tried to use a Premium feature
    case premiumSourceFeature(PremiumSourceFeature)

    /// A user tried to use a Business feature
    case premiumSourceBusinessFeature(PremiumSourceBusinessFeature)

    /// A user tried to use a Premium story feature
    case premiumSourceStoryFeature(PremiumSourceStoryFeature)

    /// A user opened an internal link of the type internalLinkTypePremiumFeatures
    case premiumSourceLink(PremiumSourceLink)

    /// A user opened the Premium features screen from settings
    case premiumSourceSettings


    private enum Kind: String, Codable {
        case premiumSourceLimitExceeded
        case premiumSourceFeature
        case premiumSourceBusinessFeature
        case premiumSourceStoryFeature
        case premiumSourceLink
        case premiumSourceSettings
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .premiumSourceLimitExceeded:
            let value = try PremiumSourceLimitExceeded(from: decoder)
            self = .premiumSourceLimitExceeded(value)
        case .premiumSourceFeature:
            let value = try PremiumSourceFeature(from: decoder)
            self = .premiumSourceFeature(value)
        case .premiumSourceBusinessFeature:
            let value = try PremiumSourceBusinessFeature(from: decoder)
            self = .premiumSourceBusinessFeature(value)
        case .premiumSourceStoryFeature:
            let value = try PremiumSourceStoryFeature(from: decoder)
            self = .premiumSourceStoryFeature(value)
        case .premiumSourceLink:
            let value = try PremiumSourceLink(from: decoder)
            self = .premiumSourceLink(value)
        case .premiumSourceSettings:
            self = .premiumSourceSettings
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .premiumSourceLimitExceeded(let value):
            try container.encode(Kind.premiumSourceLimitExceeded, forKey: .type)
            try value.encode(to: encoder)
        case .premiumSourceFeature(let value):
            try container.encode(Kind.premiumSourceFeature, forKey: .type)
            try value.encode(to: encoder)
        case .premiumSourceBusinessFeature(let value):
            try container.encode(Kind.premiumSourceBusinessFeature, forKey: .type)
            try value.encode(to: encoder)
        case .premiumSourceStoryFeature(let value):
            try container.encode(Kind.premiumSourceStoryFeature, forKey: .type)
            try value.encode(to: encoder)
        case .premiumSourceLink(let value):
            try container.encode(Kind.premiumSourceLink, forKey: .type)
            try value.encode(to: encoder)
        case .premiumSourceSettings:
            try container.encode(Kind.premiumSourceSettings, forKey: .type)
        }
    }
}

/// A limit was exceeded
public struct PremiumSourceLimitExceeded: Codable, Equatable, Hashable {

    /// Type of the exceeded limit
    public let limitType: PremiumLimitType


    public init(limitType: PremiumLimitType) {
        self.limitType = limitType
    }
}

/// A user tried to use a Premium feature
public struct PremiumSourceFeature: Codable, Equatable, Hashable {

    /// The used feature
    public let feature: PremiumFeature


    public init(feature: PremiumFeature) {
        self.feature = feature
    }
}

/// A user tried to use a Business feature
public struct PremiumSourceBusinessFeature: Codable, Equatable, Hashable {

    /// The used feature; pass null if none specific feature was used
    public let feature: BusinessFeature?


    public init(feature: BusinessFeature?) {
        self.feature = feature
    }
}

/// A user tried to use a Premium story feature
public struct PremiumSourceStoryFeature: Codable, Equatable, Hashable {

    /// The used feature
    public let feature: PremiumStoryFeature


    public init(feature: PremiumStoryFeature) {
        self.feature = feature
    }
}

/// A user opened an internal link of the type internalLinkTypePremiumFeatures
public struct PremiumSourceLink: Codable, Equatable, Hashable {

    /// The referrer from the link
    public let referrer: String


    public init(referrer: String) {
        self.referrer = referrer
    }
}


//
//  GroupCallVideoQuality.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the quality of a group call video
public indirect enum GroupCallVideoQuality: Codable, Equatable, Hashable {

    /// The worst available video quality
    case groupCallVideoQualityThumbnail

    /// The medium video quality
    case groupCallVideoQualityMedium

    /// The best available video quality
    case groupCallVideoQualityFull


    private enum Kind: String, Codable {
        case groupCallVideoQualityThumbnail
        case groupCallVideoQualityMedium
        case groupCallVideoQualityFull
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .groupCallVideoQualityThumbnail:
            self = .groupCallVideoQualityThumbnail
        case .groupCallVideoQualityMedium:
            self = .groupCallVideoQualityMedium
        case .groupCallVideoQualityFull:
            self = .groupCallVideoQualityFull
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .groupCallVideoQualityThumbnail:
            try container.encode(Kind.groupCallVideoQualityThumbnail, forKey: .type)
        case .groupCallVideoQualityMedium:
            try container.encode(Kind.groupCallVideoQualityMedium, forKey: .type)
        case .groupCallVideoQualityFull:
            try container.encode(Kind.groupCallVideoQualityFull, forKey: .type)
        }
    }
}


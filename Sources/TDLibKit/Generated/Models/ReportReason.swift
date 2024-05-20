//
//  ReportReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes the reason why a chat is reported
public indirect enum ReportReason: Codable, Equatable, Hashable {

    /// The chat contains spam messages
    case reportReasonSpam

    /// The chat promotes violence
    case reportReasonViolence

    /// The chat contains pornographic messages
    case reportReasonPornography

    /// The chat has child abuse related content
    case reportReasonChildAbuse

    /// The chat contains copyrighted content
    case reportReasonCopyright

    /// The location-based chat is unrelated to its stated location
    case reportReasonUnrelatedLocation

    /// The chat represents a fake account
    case reportReasonFake

    /// The chat has illegal drugs related content
    case reportReasonIllegalDrugs

    /// The chat contains messages with personal details
    case reportReasonPersonalDetails

    /// A custom reason provided by the user
    case reportReasonCustom


    private enum Kind: String, Codable {
        case reportReasonSpam
        case reportReasonViolence
        case reportReasonPornography
        case reportReasonChildAbuse
        case reportReasonCopyright
        case reportReasonUnrelatedLocation
        case reportReasonFake
        case reportReasonIllegalDrugs
        case reportReasonPersonalDetails
        case reportReasonCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reportReasonSpam:
            self = .reportReasonSpam
        case .reportReasonViolence:
            self = .reportReasonViolence
        case .reportReasonPornography:
            self = .reportReasonPornography
        case .reportReasonChildAbuse:
            self = .reportReasonChildAbuse
        case .reportReasonCopyright:
            self = .reportReasonCopyright
        case .reportReasonUnrelatedLocation:
            self = .reportReasonUnrelatedLocation
        case .reportReasonFake:
            self = .reportReasonFake
        case .reportReasonIllegalDrugs:
            self = .reportReasonIllegalDrugs
        case .reportReasonPersonalDetails:
            self = .reportReasonPersonalDetails
        case .reportReasonCustom:
            self = .reportReasonCustom
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reportReasonSpam:
            try container.encode(Kind.reportReasonSpam, forKey: .type)
        case .reportReasonViolence:
            try container.encode(Kind.reportReasonViolence, forKey: .type)
        case .reportReasonPornography:
            try container.encode(Kind.reportReasonPornography, forKey: .type)
        case .reportReasonChildAbuse:
            try container.encode(Kind.reportReasonChildAbuse, forKey: .type)
        case .reportReasonCopyright:
            try container.encode(Kind.reportReasonCopyright, forKey: .type)
        case .reportReasonUnrelatedLocation:
            try container.encode(Kind.reportReasonUnrelatedLocation, forKey: .type)
        case .reportReasonFake:
            try container.encode(Kind.reportReasonFake, forKey: .type)
        case .reportReasonIllegalDrugs:
            try container.encode(Kind.reportReasonIllegalDrugs, forKey: .type)
        case .reportReasonPersonalDetails:
            try container.encode(Kind.reportReasonPersonalDetails, forKey: .type)
        case .reportReasonCustom:
            try container.encode(Kind.reportReasonCustom, forKey: .type)
        }
    }
}


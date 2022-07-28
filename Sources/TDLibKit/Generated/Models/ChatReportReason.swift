//
//  ChatReportReason.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes the reason why a chat is reported
public enum ChatReportReason: Codable, Equatable {

    /// The chat contains spam messages
    case chatReportReasonSpam

    /// The chat promotes violence
    case chatReportReasonViolence

    /// The chat contains pornographic messages
    case chatReportReasonPornography

    /// The chat has child abuse related content
    case chatReportReasonChildAbuse

    /// The chat contains copyrighted content
    case chatReportReasonCopyright

    /// The location-based chat is unrelated to its stated location
    case chatReportReasonUnrelatedLocation

    /// The chat represents a fake account
    case chatReportReasonFake

    /// The chat has illegal drugs related content
    case chatReportReasonIllegalDrugs

    /// The chat contains messages with personal details
    case chatReportReasonPersonalDetails

    /// A custom reason provided by the user
    case chatReportReasonCustom


    private enum Kind: String, Codable {
        case chatReportReasonSpam
        case chatReportReasonViolence
        case chatReportReasonPornography
        case chatReportReasonChildAbuse
        case chatReportReasonCopyright
        case chatReportReasonUnrelatedLocation
        case chatReportReasonFake
        case chatReportReasonIllegalDrugs
        case chatReportReasonPersonalDetails
        case chatReportReasonCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatReportReasonSpam:
            self = .chatReportReasonSpam
        case .chatReportReasonViolence:
            self = .chatReportReasonViolence
        case .chatReportReasonPornography:
            self = .chatReportReasonPornography
        case .chatReportReasonChildAbuse:
            self = .chatReportReasonChildAbuse
        case .chatReportReasonCopyright:
            self = .chatReportReasonCopyright
        case .chatReportReasonUnrelatedLocation:
            self = .chatReportReasonUnrelatedLocation
        case .chatReportReasonFake:
            self = .chatReportReasonFake
        case .chatReportReasonIllegalDrugs:
            self = .chatReportReasonIllegalDrugs
        case .chatReportReasonPersonalDetails:
            self = .chatReportReasonPersonalDetails
        case .chatReportReasonCustom:
            self = .chatReportReasonCustom
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatReportReasonSpam:
            try container.encode(Kind.chatReportReasonSpam, forKey: .type)
        case .chatReportReasonViolence:
            try container.encode(Kind.chatReportReasonViolence, forKey: .type)
        case .chatReportReasonPornography:
            try container.encode(Kind.chatReportReasonPornography, forKey: .type)
        case .chatReportReasonChildAbuse:
            try container.encode(Kind.chatReportReasonChildAbuse, forKey: .type)
        case .chatReportReasonCopyright:
            try container.encode(Kind.chatReportReasonCopyright, forKey: .type)
        case .chatReportReasonUnrelatedLocation:
            try container.encode(Kind.chatReportReasonUnrelatedLocation, forKey: .type)
        case .chatReportReasonFake:
            try container.encode(Kind.chatReportReasonFake, forKey: .type)
        case .chatReportReasonIllegalDrugs:
            try container.encode(Kind.chatReportReasonIllegalDrugs, forKey: .type)
        case .chatReportReasonPersonalDetails:
            try container.encode(Kind.chatReportReasonPersonalDetails, forKey: .type)
        case .chatReportReasonCustom:
            try container.encode(Kind.chatReportReasonCustom, forKey: .type)
        }
    }
}


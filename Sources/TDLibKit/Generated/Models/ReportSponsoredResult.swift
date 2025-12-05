//
//  ReportSponsoredResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes result of sponsored message or chat report
public indirect enum ReportSponsoredResult: Codable, Equatable, Hashable {

    /// The message was reported successfully
    case reportSponsoredResultOk

    /// The sponsored message is too old or not found
    case reportSponsoredResultFailed

    /// The user must choose an option to report the message and repeat request with the chosen option
    case reportSponsoredResultOptionRequired(ReportSponsoredResultOptionRequired)

    /// Sponsored messages were hidden for the user in all chats
    case reportSponsoredResultAdsHidden

    /// The user asked to hide sponsored messages, but Telegram Premium is required for this
    case reportSponsoredResultPremiumRequired


    private enum Kind: String, Codable {
        case reportSponsoredResultOk
        case reportSponsoredResultFailed
        case reportSponsoredResultOptionRequired
        case reportSponsoredResultAdsHidden
        case reportSponsoredResultPremiumRequired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reportSponsoredResultOk:
            self = .reportSponsoredResultOk
        case .reportSponsoredResultFailed:
            self = .reportSponsoredResultFailed
        case .reportSponsoredResultOptionRequired:
            let value = try ReportSponsoredResultOptionRequired(from: decoder)
            self = .reportSponsoredResultOptionRequired(value)
        case .reportSponsoredResultAdsHidden:
            self = .reportSponsoredResultAdsHidden
        case .reportSponsoredResultPremiumRequired:
            self = .reportSponsoredResultPremiumRequired
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reportSponsoredResultOk:
            try container.encode(Kind.reportSponsoredResultOk, forKey: .type)
        case .reportSponsoredResultFailed:
            try container.encode(Kind.reportSponsoredResultFailed, forKey: .type)
        case .reportSponsoredResultOptionRequired(let value):
            try container.encode(Kind.reportSponsoredResultOptionRequired, forKey: .type)
            try value.encode(to: encoder)
        case .reportSponsoredResultAdsHidden:
            try container.encode(Kind.reportSponsoredResultAdsHidden, forKey: .type)
        case .reportSponsoredResultPremiumRequired:
            try container.encode(Kind.reportSponsoredResultPremiumRequired, forKey: .type)
        }
    }
}

/// The user must choose an option to report the message and repeat request with the chosen option
public struct ReportSponsoredResultOptionRequired: Codable, Equatable, Hashable {

    /// List of available options
    public let options: [ReportOption]

    /// Title for the option choice
    public let title: String


    public init(
        options: [ReportOption],
        title: String
    ) {
        self.options = options
        self.title = title
    }
}


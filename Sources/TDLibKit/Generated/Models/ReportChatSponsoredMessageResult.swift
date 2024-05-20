//
//  ReportChatSponsoredMessageResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes result of sponsored message report
public indirect enum ReportChatSponsoredMessageResult: Codable, Equatable, Hashable {

    /// The message was reported successfully
    case reportChatSponsoredMessageResultOk

    /// The sponsored message is too old or not found
    case reportChatSponsoredMessageResultFailed

    /// The user must choose an option to report the message and repeat request with the chosen option
    case reportChatSponsoredMessageResultOptionRequired(ReportChatSponsoredMessageResultOptionRequired)

    /// Sponsored messages were hidden for the user in all chats
    case reportChatSponsoredMessageResultAdsHidden

    /// The user asked to hide sponsored messages, but Telegram Premium is required for this
    case reportChatSponsoredMessageResultPremiumRequired


    private enum Kind: String, Codable {
        case reportChatSponsoredMessageResultOk
        case reportChatSponsoredMessageResultFailed
        case reportChatSponsoredMessageResultOptionRequired
        case reportChatSponsoredMessageResultAdsHidden
        case reportChatSponsoredMessageResultPremiumRequired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reportChatSponsoredMessageResultOk:
            self = .reportChatSponsoredMessageResultOk
        case .reportChatSponsoredMessageResultFailed:
            self = .reportChatSponsoredMessageResultFailed
        case .reportChatSponsoredMessageResultOptionRequired:
            let value = try ReportChatSponsoredMessageResultOptionRequired(from: decoder)
            self = .reportChatSponsoredMessageResultOptionRequired(value)
        case .reportChatSponsoredMessageResultAdsHidden:
            self = .reportChatSponsoredMessageResultAdsHidden
        case .reportChatSponsoredMessageResultPremiumRequired:
            self = .reportChatSponsoredMessageResultPremiumRequired
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reportChatSponsoredMessageResultOk:
            try container.encode(Kind.reportChatSponsoredMessageResultOk, forKey: .type)
        case .reportChatSponsoredMessageResultFailed:
            try container.encode(Kind.reportChatSponsoredMessageResultFailed, forKey: .type)
        case .reportChatSponsoredMessageResultOptionRequired(let value):
            try container.encode(Kind.reportChatSponsoredMessageResultOptionRequired, forKey: .type)
            try value.encode(to: encoder)
        case .reportChatSponsoredMessageResultAdsHidden:
            try container.encode(Kind.reportChatSponsoredMessageResultAdsHidden, forKey: .type)
        case .reportChatSponsoredMessageResultPremiumRequired:
            try container.encode(Kind.reportChatSponsoredMessageResultPremiumRequired, forKey: .type)
        }
    }
}

/// The user must choose an option to report the message and repeat request with the chosen option
public struct ReportChatSponsoredMessageResultOptionRequired: Codable, Equatable, Hashable {

    /// List of available options
    public let options: [ReportChatSponsoredMessageOption]

    /// Title for the option choice
    public let title: String


    public init(
        options: [ReportChatSponsoredMessageOption],
        title: String
    ) {
        self.options = options
        self.title = title
    }
}


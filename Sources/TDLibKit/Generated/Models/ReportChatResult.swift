//
//  ReportChatResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
//

import Foundation


/// Describes result of chat report
public indirect enum ReportChatResult: Codable, Equatable, Hashable {

    /// The chat was reported successfully
    case reportChatResultOk

    /// The user must choose an option to report the chat and repeat request with the chosen option
    case reportChatResultOptionRequired(ReportChatResultOptionRequired)

    /// The user must add additional text details to the report
    case reportChatResultTextRequired(ReportChatResultTextRequired)

    /// The user must choose messages to report and repeat the reportChat request with the chosen messages
    case reportChatResultMessagesRequired


    private enum Kind: String, Codable {
        case reportChatResultOk
        case reportChatResultOptionRequired
        case reportChatResultTextRequired
        case reportChatResultMessagesRequired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reportChatResultOk:
            self = .reportChatResultOk
        case .reportChatResultOptionRequired:
            let value = try ReportChatResultOptionRequired(from: decoder)
            self = .reportChatResultOptionRequired(value)
        case .reportChatResultTextRequired:
            let value = try ReportChatResultTextRequired(from: decoder)
            self = .reportChatResultTextRequired(value)
        case .reportChatResultMessagesRequired:
            self = .reportChatResultMessagesRequired
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reportChatResultOk:
            try container.encode(Kind.reportChatResultOk, forKey: .type)
        case .reportChatResultOptionRequired(let value):
            try container.encode(Kind.reportChatResultOptionRequired, forKey: .type)
            try value.encode(to: encoder)
        case .reportChatResultTextRequired(let value):
            try container.encode(Kind.reportChatResultTextRequired, forKey: .type)
            try value.encode(to: encoder)
        case .reportChatResultMessagesRequired:
            try container.encode(Kind.reportChatResultMessagesRequired, forKey: .type)
        }
    }
}

/// The user must choose an option to report the chat and repeat request with the chosen option
public struct ReportChatResultOptionRequired: Codable, Equatable, Hashable {

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

/// The user must add additional text details to the report
public struct ReportChatResultTextRequired: Codable, Equatable, Hashable {

    /// True, if the user can skip text adding
    public let isOptional: Bool

    /// Option identifier for the next reportChat request
    public let optionId: Data


    public init(
        isOptional: Bool,
        optionId: Data
    ) {
        self.isOptional = isOptional
        self.optionId = optionId
    }
}


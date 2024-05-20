//
//  InlineQueryResultsButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a type of button in results of inline query
public indirect enum InlineQueryResultsButtonType: Codable, Equatable, Hashable {

    /// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter
    case inlineQueryResultsButtonTypeStartBot(InlineQueryResultsButtonTypeStartBot)

    /// Describes the button that opens a Web App by calling getWebAppUrl
    case inlineQueryResultsButtonTypeWebApp(InlineQueryResultsButtonTypeWebApp)


    private enum Kind: String, Codable {
        case inlineQueryResultsButtonTypeStartBot
        case inlineQueryResultsButtonTypeWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inlineQueryResultsButtonTypeStartBot:
            let value = try InlineQueryResultsButtonTypeStartBot(from: decoder)
            self = .inlineQueryResultsButtonTypeStartBot(value)
        case .inlineQueryResultsButtonTypeWebApp:
            let value = try InlineQueryResultsButtonTypeWebApp(from: decoder)
            self = .inlineQueryResultsButtonTypeWebApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inlineQueryResultsButtonTypeStartBot(let value):
            try container.encode(Kind.inlineQueryResultsButtonTypeStartBot, forKey: .type)
            try value.encode(to: encoder)
        case .inlineQueryResultsButtonTypeWebApp(let value):
            try container.encode(Kind.inlineQueryResultsButtonTypeWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter
public struct InlineQueryResultsButtonTypeStartBot: Codable, Equatable, Hashable {

    /// The parameter for the bot start message
    public let parameter: String


    public init(parameter: String) {
        self.parameter = parameter
    }
}

/// Describes the button that opens a Web App by calling getWebAppUrl
public struct InlineQueryResultsButtonTypeWebApp: Codable, Equatable, Hashable {

    /// An HTTP URL to pass to getWebAppUrl
    public let url: String


    public init(url: String) {
        self.url = url
    }
}


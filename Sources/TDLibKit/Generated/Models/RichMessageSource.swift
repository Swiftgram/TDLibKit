//
//  RichMessageSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Describes source of a rich message
public indirect enum RichMessageSource: Codable, Equatable, Hashable {

    /// A Markdown-formatted rich message; for bots only
    case richMessageSourceMarkdown(RichMessageSourceMarkdown)

    /// An HTML-formatted rich message; for bots only
    case richMessageSourceHtml(RichMessageSourceHtml)


    private enum Kind: String, Codable {
        case richMessageSourceMarkdown
        case richMessageSourceHtml
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .richMessageSourceMarkdown:
            let value = try RichMessageSourceMarkdown(from: decoder)
            self = .richMessageSourceMarkdown(value)
        case .richMessageSourceHtml:
            let value = try RichMessageSourceHtml(from: decoder)
            self = .richMessageSourceHtml(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .richMessageSourceMarkdown(let value):
            try container.encode(Kind.richMessageSourceMarkdown, forKey: .type)
            try value.encode(to: encoder)
        case .richMessageSourceHtml(let value):
            try container.encode(Kind.richMessageSourceHtml, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Markdown-formatted rich message; for bots only
public struct RichMessageSourceMarkdown: Codable, Equatable, Hashable {

    /// Markdown-formatted text of the message
    public let text: String


    public init(text: String) {
        self.text = text
    }
}

/// An HTML-formatted rich message; for bots only
public struct RichMessageSourceHtml: Codable, Equatable, Hashable {

    /// HTML-formatted text of the message
    public let text: String


    public init(text: String) {
        self.text = text
    }
}


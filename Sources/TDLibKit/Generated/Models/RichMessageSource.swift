//
//  RichMessageSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Describes source of a rich message
public indirect enum RichMessageSource: Codable, Equatable, Hashable {

    /// A rich message defined by blocks
    case richMessageSourceBlocks(RichMessageSourceBlocks)

    /// A Markdown-formatted rich message; for bots only
    case richMessageSourceMarkdown(RichMessageSourceMarkdown)

    /// An HTML-formatted rich message; for bots only
    case richMessageSourceHtml(RichMessageSourceHtml)


    private enum Kind: String, Codable {
        case richMessageSourceBlocks
        case richMessageSourceMarkdown
        case richMessageSourceHtml
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .richMessageSourceBlocks:
            let value = try RichMessageSourceBlocks(from: decoder)
            self = .richMessageSourceBlocks(value)
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
        case .richMessageSourceBlocks(let value):
            try container.encode(Kind.richMessageSourceBlocks, forKey: .type)
            try value.encode(to: encoder)
        case .richMessageSourceMarkdown(let value):
            try container.encode(Kind.richMessageSourceMarkdown, forKey: .type)
            try value.encode(to: encoder)
        case .richMessageSourceHtml(let value):
            try container.encode(Kind.richMessageSourceHtml, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A rich message defined by blocks
public struct RichMessageSourceBlocks: Codable, Equatable, Hashable {

    /// Content of the message
    public let blocks: [InputPageBlock]


    public init(blocks: [InputPageBlock]) {
        self.blocks = blocks
    }
}

/// A Markdown-formatted rich message; for bots only
public struct RichMessageSourceMarkdown: Codable, Equatable, Hashable {

    /// Media used in the message
    public let media: [InputRichMessageMedia]

    /// Markdown-formatted text of the message
    public let text: String


    public init(
        media: [InputRichMessageMedia],
        text: String
    ) {
        self.media = media
        self.text = text
    }
}

/// An HTML-formatted rich message; for bots only
public struct RichMessageSourceHtml: Codable, Equatable, Hashable {

    /// Media used in the message
    public let media: [InputRichMessageMedia]

    /// HTML-formatted text of the message
    public let text: String


    public init(
        media: [InputRichMessageMedia],
        text: String
    ) {
        self.media = media
        self.text = text
    }
}


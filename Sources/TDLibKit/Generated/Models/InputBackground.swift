//
//  InputBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about background to set
public indirect enum InputBackground: Codable, Equatable, Hashable {

    /// A background from a local file
    case inputBackgroundLocal(InputBackgroundLocal)

    /// A background from the server
    case inputBackgroundRemote(InputBackgroundRemote)

    /// A background previously set in the chat; for chat backgrounds only
    case inputBackgroundPrevious(InputBackgroundPrevious)


    private enum Kind: String, Codable {
        case inputBackgroundLocal
        case inputBackgroundRemote
        case inputBackgroundPrevious
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputBackgroundLocal:
            let value = try InputBackgroundLocal(from: decoder)
            self = .inputBackgroundLocal(value)
        case .inputBackgroundRemote:
            let value = try InputBackgroundRemote(from: decoder)
            self = .inputBackgroundRemote(value)
        case .inputBackgroundPrevious:
            let value = try InputBackgroundPrevious(from: decoder)
            self = .inputBackgroundPrevious(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputBackgroundLocal(let value):
            try container.encode(Kind.inputBackgroundLocal, forKey: .type)
            try value.encode(to: encoder)
        case .inputBackgroundRemote(let value):
            try container.encode(Kind.inputBackgroundRemote, forKey: .type)
            try value.encode(to: encoder)
        case .inputBackgroundPrevious(let value):
            try container.encode(Kind.inputBackgroundPrevious, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A background from a local file
public struct InputBackgroundLocal: Codable, Equatable, Hashable {

    /// Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
    public let background: InputFile


    public init(background: InputFile) {
        self.background = background
    }
}

/// A background from the server
public struct InputBackgroundRemote: Codable, Equatable, Hashable {

    /// The background identifier
    public let backgroundId: TdInt64


    public init(backgroundId: TdInt64) {
        self.backgroundId = backgroundId
    }
}

/// A background previously set in the chat; for chat backgrounds only
public struct InputBackgroundPrevious: Codable, Equatable, Hashable {

    /// Identifier of the message with the background
    public let messageId: Int64


    public init(messageId: Int64) {
        self.messageId = messageId
    }
}


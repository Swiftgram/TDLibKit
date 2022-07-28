//
//  InputBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about background to set
public enum InputBackground: Codable, Equatable {

    /// A background from a local file
    case inputBackgroundLocal(InputBackgroundLocal)

    /// A background from the server
    case inputBackgroundRemote(InputBackgroundRemote)


    private enum Kind: String, Codable {
        case inputBackgroundLocal
        case inputBackgroundRemote
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
        }
    }
}

/// A background from a local file
public struct InputBackgroundLocal: Codable, Equatable {

    /// Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
    public let background: InputFile


    public init(background: InputFile) {
        self.background = background
    }
}

/// A background from the server
public struct InputBackgroundRemote: Codable, Equatable {

    /// The background identifier
    public let backgroundId: TdInt64


    public init(backgroundId: TdInt64) {
        self.backgroundId = backgroundId
    }
}


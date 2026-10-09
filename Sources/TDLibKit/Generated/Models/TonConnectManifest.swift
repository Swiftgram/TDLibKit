//
//  TonConnectManifest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Describes manifest of the dApp that is being connected using TON Connect
public indirect enum TonConnectManifest: Codable, Equatable, Hashable {

    /// The manifest is being downloaded
    case tonConnectManifestPending

    /// The manifest is available
    case tonConnectManifestInfo(TonConnectManifestInfo)

    /// The manifest has failed to download
    case tonConnectManifestFailed

    /// The manifest is invalid
    case tonConnectManifestInvalid


    private enum Kind: String, Codable {
        case tonConnectManifestPending
        case tonConnectManifestInfo
        case tonConnectManifestFailed
        case tonConnectManifestInvalid
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonConnectManifestPending:
            self = .tonConnectManifestPending
        case .tonConnectManifestInfo:
            let value = try TonConnectManifestInfo(from: decoder)
            self = .tonConnectManifestInfo(value)
        case .tonConnectManifestFailed:
            self = .tonConnectManifestFailed
        case .tonConnectManifestInvalid:
            self = .tonConnectManifestInvalid
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonConnectManifestPending:
            try container.encode(Kind.tonConnectManifestPending, forKey: .type)
        case .tonConnectManifestInfo(let value):
            try container.encode(Kind.tonConnectManifestInfo, forKey: .type)
            try value.encode(to: encoder)
        case .tonConnectManifestFailed:
            try container.encode(Kind.tonConnectManifestFailed, forKey: .type)
        case .tonConnectManifestInvalid:
            try container.encode(Kind.tonConnectManifestInvalid, forKey: .type)
        }
    }
}

/// The manifest is available
public struct TonConnectManifestInfo: Codable, Equatable, Hashable {

    /// App icon in PNG or ICO format
    public let icon: Document

    /// Name of the dApp
    public let name: String

    /// URL of the dApp
    public let url: String


    public init(
        icon: Document,
        name: String,
        url: String
    ) {
        self.icon = icon
        self.name = name
        self.url = url
    }
}


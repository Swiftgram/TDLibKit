//
//  NetworkType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents the type of a network
public enum NetworkType: Codable, Equatable {

    /// The network is not available
    case networkTypeNone

    /// A mobile network
    case networkTypeMobile

    /// A mobile roaming network
    case networkTypeMobileRoaming

    /// A Wi-Fi network
    case networkTypeWiFi

    /// A different network type (e.g., Ethernet network)
    case networkTypeOther


    private enum Kind: String, Codable {
        case networkTypeNone
        case networkTypeMobile
        case networkTypeMobileRoaming
        case networkTypeWiFi
        case networkTypeOther
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .networkTypeNone:
            self = .networkTypeNone
        case .networkTypeMobile:
            self = .networkTypeMobile
        case .networkTypeMobileRoaming:
            self = .networkTypeMobileRoaming
        case .networkTypeWiFi:
            self = .networkTypeWiFi
        case .networkTypeOther:
            self = .networkTypeOther
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .networkTypeNone:
            try container.encode(Kind.networkTypeNone, forKey: .type)
        case .networkTypeMobile:
            try container.encode(Kind.networkTypeMobile, forKey: .type)
        case .networkTypeMobileRoaming:
            try container.encode(Kind.networkTypeMobileRoaming, forKey: .type)
        case .networkTypeWiFi:
            try container.encode(Kind.networkTypeWiFi, forKey: .type)
        case .networkTypeOther:
            try container.encode(Kind.networkTypeOther, forKey: .type)
        }
    }
}


//
//  CollectibleItemType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a collectible item that can be purchased at https://fragment.com
public indirect enum CollectibleItemType: Codable, Equatable, Hashable {

    /// A username
    case collectibleItemTypeUsername(CollectibleItemTypeUsername)

    /// A phone number
    case collectibleItemTypePhoneNumber(CollectibleItemTypePhoneNumber)


    private enum Kind: String, Codable {
        case collectibleItemTypeUsername
        case collectibleItemTypePhoneNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .collectibleItemTypeUsername:
            let value = try CollectibleItemTypeUsername(from: decoder)
            self = .collectibleItemTypeUsername(value)
        case .collectibleItemTypePhoneNumber:
            let value = try CollectibleItemTypePhoneNumber(from: decoder)
            self = .collectibleItemTypePhoneNumber(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .collectibleItemTypeUsername(let value):
            try container.encode(Kind.collectibleItemTypeUsername, forKey: .type)
            try value.encode(to: encoder)
        case .collectibleItemTypePhoneNumber(let value):
            try container.encode(Kind.collectibleItemTypePhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A username
public struct CollectibleItemTypeUsername: Codable, Equatable, Hashable {

    /// The username
    public let username: String


    public init(username: String) {
        self.username = username
    }
}

/// A phone number
public struct CollectibleItemTypePhoneNumber: Codable, Equatable, Hashable {

    /// The phone number
    public let phoneNumber: String


    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
}


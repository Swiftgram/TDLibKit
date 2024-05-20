//
//  PhoneNumberCodeType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes type of the request for which a code is sent to a phone number
public indirect enum PhoneNumberCodeType: Codable, Equatable, Hashable {

    /// Checks ownership of a new phone number to change the user's authentication phone number; for official Android and iOS applications only.
    case phoneNumberCodeTypeChange

    /// Verifies ownership of a phone number to be added to the user's Telegram Passport
    case phoneNumberCodeTypeVerify

    /// Confirms ownership of a phone number to prevent account deletion while handling links of the type internalLinkTypePhoneNumberConfirmation
    case phoneNumberCodeTypeConfirmOwnership(PhoneNumberCodeTypeConfirmOwnership)


    private enum Kind: String, Codable {
        case phoneNumberCodeTypeChange
        case phoneNumberCodeTypeVerify
        case phoneNumberCodeTypeConfirmOwnership
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .phoneNumberCodeTypeChange:
            self = .phoneNumberCodeTypeChange
        case .phoneNumberCodeTypeVerify:
            self = .phoneNumberCodeTypeVerify
        case .phoneNumberCodeTypeConfirmOwnership:
            let value = try PhoneNumberCodeTypeConfirmOwnership(from: decoder)
            self = .phoneNumberCodeTypeConfirmOwnership(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .phoneNumberCodeTypeChange:
            try container.encode(Kind.phoneNumberCodeTypeChange, forKey: .type)
        case .phoneNumberCodeTypeVerify:
            try container.encode(Kind.phoneNumberCodeTypeVerify, forKey: .type)
        case .phoneNumberCodeTypeConfirmOwnership(let value):
            try container.encode(Kind.phoneNumberCodeTypeConfirmOwnership, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Confirms ownership of a phone number to prevent account deletion while handling links of the type internalLinkTypePhoneNumberConfirmation
public struct PhoneNumberCodeTypeConfirmOwnership: Codable, Equatable, Hashable {

    /// Hash value from the link
    public let hash: String


    public init(hash: String) {
        self.hash = hash
    }
}


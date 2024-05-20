//
//  EmailAddressAuthentication.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains authentication data for an email address
public indirect enum EmailAddressAuthentication: Codable, Equatable, Hashable {

    /// An authentication code delivered to a user's email address
    case emailAddressAuthenticationCode(EmailAddressAuthenticationCode)

    /// An authentication token received through Apple ID
    case emailAddressAuthenticationAppleId(EmailAddressAuthenticationAppleId)

    /// An authentication token received through Google ID
    case emailAddressAuthenticationGoogleId(EmailAddressAuthenticationGoogleId)


    private enum Kind: String, Codable {
        case emailAddressAuthenticationCode
        case emailAddressAuthenticationAppleId
        case emailAddressAuthenticationGoogleId
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emailAddressAuthenticationCode:
            let value = try EmailAddressAuthenticationCode(from: decoder)
            self = .emailAddressAuthenticationCode(value)
        case .emailAddressAuthenticationAppleId:
            let value = try EmailAddressAuthenticationAppleId(from: decoder)
            self = .emailAddressAuthenticationAppleId(value)
        case .emailAddressAuthenticationGoogleId:
            let value = try EmailAddressAuthenticationGoogleId(from: decoder)
            self = .emailAddressAuthenticationGoogleId(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .emailAddressAuthenticationCode(let value):
            try container.encode(Kind.emailAddressAuthenticationCode, forKey: .type)
            try value.encode(to: encoder)
        case .emailAddressAuthenticationAppleId(let value):
            try container.encode(Kind.emailAddressAuthenticationAppleId, forKey: .type)
            try value.encode(to: encoder)
        case .emailAddressAuthenticationGoogleId(let value):
            try container.encode(Kind.emailAddressAuthenticationGoogleId, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An authentication code delivered to a user's email address
public struct EmailAddressAuthenticationCode: Codable, Equatable, Hashable {

    /// The code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

/// An authentication token received through Apple ID
public struct EmailAddressAuthenticationAppleId: Codable, Equatable, Hashable {

    /// The token
    public let token: String


    public init(token: String) {
        self.token = token
    }
}

/// An authentication token received through Google ID
public struct EmailAddressAuthenticationGoogleId: Codable, Equatable, Hashable {

    /// The token
    public let token: String


    public init(token: String) {
        self.token = token
    }
}


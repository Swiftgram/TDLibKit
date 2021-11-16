//
//  AuthenticationCodeType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Provides information about the method by which an authentication code is delivered to the user
public enum AuthenticationCodeType: Codable {

    /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
    case authenticationCodeTypeTelegramMessage(AuthenticationCodeTypeTelegramMessage)

    /// An authentication code is delivered via an SMS message to the specified phone number
    case authenticationCodeTypeSms(AuthenticationCodeTypeSms)

    /// An authentication code is delivered via a phone call to the specified phone number
    case authenticationCodeTypeCall(AuthenticationCodeTypeCall)

    /// An authentication code is delivered by an immediately canceled call to the specified phone number. The number from which the call was made is the code
    case authenticationCodeTypeFlashCall(AuthenticationCodeTypeFlashCall)


    private enum Kind: String, Codable {
        case authenticationCodeTypeTelegramMessage
        case authenticationCodeTypeSms
        case authenticationCodeTypeCall
        case authenticationCodeTypeFlashCall
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .authenticationCodeTypeTelegramMessage:
            let value = try AuthenticationCodeTypeTelegramMessage(from: decoder)
            self = .authenticationCodeTypeTelegramMessage(value)
        case .authenticationCodeTypeSms:
            let value = try AuthenticationCodeTypeSms(from: decoder)
            self = .authenticationCodeTypeSms(value)
        case .authenticationCodeTypeCall:
            let value = try AuthenticationCodeTypeCall(from: decoder)
            self = .authenticationCodeTypeCall(value)
        case .authenticationCodeTypeFlashCall:
            let value = try AuthenticationCodeTypeFlashCall(from: decoder)
            self = .authenticationCodeTypeFlashCall(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .authenticationCodeTypeTelegramMessage(let value):
            try container.encode(Kind.authenticationCodeTypeTelegramMessage, forKey: .type)
            try value.encode(to: encoder)
        case .authenticationCodeTypeSms(let value):
            try container.encode(Kind.authenticationCodeTypeSms, forKey: .type)
            try value.encode(to: encoder)
        case .authenticationCodeTypeCall(let value):
            try container.encode(Kind.authenticationCodeTypeCall, forKey: .type)
            try value.encode(to: encoder)
        case .authenticationCodeTypeFlashCall(let value):
            try container.encode(Kind.authenticationCodeTypeFlashCall, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An authentication code is delivered via a private Telegram message, which can be viewed from another active session
public struct AuthenticationCodeTypeTelegramMessage: Codable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered via an SMS message to the specified phone number
public struct AuthenticationCodeTypeSms: Codable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered via a phone call to the specified phone number
public struct AuthenticationCodeTypeCall: Codable {

    /// Length of the code
    public let length: Int


    public init(length: Int) {
        self.length = length
    }
}

/// An authentication code is delivered by an immediately canceled call to the specified phone number. The number from which the call was made is the code
public struct AuthenticationCodeTypeFlashCall: Codable {

    /// Pattern of the phone number from which the call will be made
    public let pattern: String


    public init(pattern: String) {
        self.pattern = pattern
    }
}


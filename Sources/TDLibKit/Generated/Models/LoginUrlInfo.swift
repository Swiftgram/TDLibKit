//
//  LoginUrlInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
//

import Foundation


/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
public indirect enum LoginUrlInfo: Codable, Equatable, Hashable {

    /// An HTTP URL needs to be open
    case loginUrlInfoOpen(LoginUrlInfoOpen)

    /// An authorization confirmation dialog needs to be shown to the user
    case loginUrlInfoRequestConfirmation(LoginUrlInfoRequestConfirmation)


    private enum Kind: String, Codable {
        case loginUrlInfoOpen
        case loginUrlInfoRequestConfirmation
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .loginUrlInfoOpen:
            let value = try LoginUrlInfoOpen(from: decoder)
            self = .loginUrlInfoOpen(value)
        case .loginUrlInfoRequestConfirmation:
            let value = try LoginUrlInfoRequestConfirmation(from: decoder)
            self = .loginUrlInfoRequestConfirmation(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .loginUrlInfoOpen(let value):
            try container.encode(Kind.loginUrlInfoOpen, forKey: .type)
            try value.encode(to: encoder)
        case .loginUrlInfoRequestConfirmation(let value):
            try container.encode(Kind.loginUrlInfoRequestConfirmation, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An HTTP URL needs to be open
public struct LoginUrlInfoOpen: Codable, Equatable, Hashable {

    /// True, if there is no need to show an ordinary open URL confirmation
    public let skipConfirmation: Bool

    /// The URL to open
    public let url: String


    public init(
        skipConfirmation: Bool,
        url: String
    ) {
        self.skipConfirmation = skipConfirmation
        self.url = url
    }
}

/// An authorization confirmation dialog needs to be shown to the user
public struct LoginUrlInfoRequestConfirmation: Codable, Equatable, Hashable {

    /// User identifier of a bot linked with the website
    public let botUserId: Int64

    /// The version of a browser used for the authorization; may be empty if irrelevant
    public let browser: String

    /// A domain of the URL
    public let domain: String

    /// IP address from which the authorization is performed, in human-readable format; may be empty if irrelevant
    public let ipAddress: String

    /// Human-readable description of a country and a region from which the authorization is performed, based on the IP address; may be empty if irrelevant
    public let location: String

    /// Operating system the browser is running on; may be empty if irrelevant
    public let platform: String

    /// True, if the user must be asked for the permission to share their phone number
    public let requestPhoneNumberAccess: Bool

    /// True, if the user must be asked for the permission to the bot to send them messages
    public let requestWriteAccess: Bool

    /// An HTTP URL to be opened
    public let url: String


    public init(
        botUserId: Int64,
        browser: String,
        domain: String,
        ipAddress: String,
        location: String,
        platform: String,
        requestPhoneNumberAccess: Bool,
        requestWriteAccess: Bool,
        url: String
    ) {
        self.botUserId = botUserId
        self.browser = browser
        self.domain = domain
        self.ipAddress = ipAddress
        self.location = location
        self.platform = platform
        self.requestPhoneNumberAccess = requestPhoneNumberAccess
        self.requestWriteAccess = requestWriteAccess
        self.url = url
    }
}


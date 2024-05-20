//
//  InputCredentials.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about the payment method chosen by the user
public indirect enum InputCredentials: Codable, Equatable, Hashable {

    /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
    case inputCredentialsSaved(InputCredentialsSaved)

    /// Applies if a user enters new credentials on a payment provider website
    case inputCredentialsNew(InputCredentialsNew)

    /// Applies if a user enters new credentials using Apple Pay
    case inputCredentialsApplePay(InputCredentialsApplePay)

    /// Applies if a user enters new credentials using Google Pay
    case inputCredentialsGooglePay(InputCredentialsGooglePay)


    private enum Kind: String, Codable {
        case inputCredentialsSaved
        case inputCredentialsNew
        case inputCredentialsApplePay
        case inputCredentialsGooglePay
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputCredentialsSaved:
            let value = try InputCredentialsSaved(from: decoder)
            self = .inputCredentialsSaved(value)
        case .inputCredentialsNew:
            let value = try InputCredentialsNew(from: decoder)
            self = .inputCredentialsNew(value)
        case .inputCredentialsApplePay:
            let value = try InputCredentialsApplePay(from: decoder)
            self = .inputCredentialsApplePay(value)
        case .inputCredentialsGooglePay:
            let value = try InputCredentialsGooglePay(from: decoder)
            self = .inputCredentialsGooglePay(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputCredentialsSaved(let value):
            try container.encode(Kind.inputCredentialsSaved, forKey: .type)
            try value.encode(to: encoder)
        case .inputCredentialsNew(let value):
            try container.encode(Kind.inputCredentialsNew, forKey: .type)
            try value.encode(to: encoder)
        case .inputCredentialsApplePay(let value):
            try container.encode(Kind.inputCredentialsApplePay, forKey: .type)
            try value.encode(to: encoder)
        case .inputCredentialsGooglePay(let value):
            try container.encode(Kind.inputCredentialsGooglePay, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password
public struct InputCredentialsSaved: Codable, Equatable, Hashable {

    /// Identifier of the saved credentials
    public let savedCredentialsId: String


    public init(savedCredentialsId: String) {
        self.savedCredentialsId = savedCredentialsId
    }
}

/// Applies if a user enters new credentials on a payment provider website
public struct InputCredentialsNew: Codable, Equatable, Hashable {

    /// True, if the credential identifier can be saved on the server side
    public let allowSave: Bool

    /// JSON-encoded data with the credential identifier from the payment provider
    public let data: String


    public init(
        allowSave: Bool,
        data: String
    ) {
        self.allowSave = allowSave
        self.data = data
    }
}

/// Applies if a user enters new credentials using Apple Pay
public struct InputCredentialsApplePay: Codable, Equatable, Hashable {

    /// JSON-encoded data with the credential identifier
    public let data: String


    public init(data: String) {
        self.data = data
    }
}

/// Applies if a user enters new credentials using Google Pay
public struct InputCredentialsGooglePay: Codable, Equatable, Hashable {

    /// JSON-encoded data with the credential identifier
    public let data: String


    public init(data: String) {
        self.data = data
    }
}


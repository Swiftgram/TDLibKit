//
//  AuthorizationState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents the current authorization state of the TDLib client
public enum AuthorizationState: Codable, Equatable {

    /// TDLib needs TdlibParameters for initialization
    case authorizationStateWaitTdlibParameters

    /// TDLib needs an encryption key to decrypt the local database
    case authorizationStateWaitEncryptionKey(AuthorizationStateWaitEncryptionKey)

    /// TDLib needs the user's phone number to authorize. Call `setAuthenticationPhoneNumber` to provide the phone number, or use `requestQrCodeAuthentication`, or `checkAuthenticationBotToken` for other authentication options
    case authorizationStateWaitPhoneNumber

    /// TDLib needs the user's authentication code to authorize
    case authorizationStateWaitCode(AuthorizationStateWaitCode)

    /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
    case authorizationStateWaitOtherDeviceConfirmation(AuthorizationStateWaitOtherDeviceConfirmation)

    /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
    case authorizationStateWaitRegistration(AuthorizationStateWaitRegistration)

    /// The user has been authorized, but needs to enter a password to start using the application
    case authorizationStateWaitPassword(AuthorizationStateWaitPassword)

    /// The user has been successfully authorized. TDLib is now ready to answer queries
    case authorizationStateReady

    /// The user is currently logging out
    case authorizationStateLoggingOut

    /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received
    case authorizationStateClosing

    /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to with error code 500. To continue working, one must create a new instance of the TDLib client
    case authorizationStateClosed


    private enum Kind: String, Codable {
        case authorizationStateWaitTdlibParameters
        case authorizationStateWaitEncryptionKey
        case authorizationStateWaitPhoneNumber
        case authorizationStateWaitCode
        case authorizationStateWaitOtherDeviceConfirmation
        case authorizationStateWaitRegistration
        case authorizationStateWaitPassword
        case authorizationStateReady
        case authorizationStateLoggingOut
        case authorizationStateClosing
        case authorizationStateClosed
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .authorizationStateWaitTdlibParameters:
            self = .authorizationStateWaitTdlibParameters
        case .authorizationStateWaitEncryptionKey:
            let value = try AuthorizationStateWaitEncryptionKey(from: decoder)
            self = .authorizationStateWaitEncryptionKey(value)
        case .authorizationStateWaitPhoneNumber:
            self = .authorizationStateWaitPhoneNumber
        case .authorizationStateWaitCode:
            let value = try AuthorizationStateWaitCode(from: decoder)
            self = .authorizationStateWaitCode(value)
        case .authorizationStateWaitOtherDeviceConfirmation:
            let value = try AuthorizationStateWaitOtherDeviceConfirmation(from: decoder)
            self = .authorizationStateWaitOtherDeviceConfirmation(value)
        case .authorizationStateWaitRegistration:
            let value = try AuthorizationStateWaitRegistration(from: decoder)
            self = .authorizationStateWaitRegistration(value)
        case .authorizationStateWaitPassword:
            let value = try AuthorizationStateWaitPassword(from: decoder)
            self = .authorizationStateWaitPassword(value)
        case .authorizationStateReady:
            self = .authorizationStateReady
        case .authorizationStateLoggingOut:
            self = .authorizationStateLoggingOut
        case .authorizationStateClosing:
            self = .authorizationStateClosing
        case .authorizationStateClosed:
            self = .authorizationStateClosed
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .authorizationStateWaitTdlibParameters:
            try container.encode(Kind.authorizationStateWaitTdlibParameters, forKey: .type)
        case .authorizationStateWaitEncryptionKey(let value):
            try container.encode(Kind.authorizationStateWaitEncryptionKey, forKey: .type)
            try value.encode(to: encoder)
        case .authorizationStateWaitPhoneNumber:
            try container.encode(Kind.authorizationStateWaitPhoneNumber, forKey: .type)
        case .authorizationStateWaitCode(let value):
            try container.encode(Kind.authorizationStateWaitCode, forKey: .type)
            try value.encode(to: encoder)
        case .authorizationStateWaitOtherDeviceConfirmation(let value):
            try container.encode(Kind.authorizationStateWaitOtherDeviceConfirmation, forKey: .type)
            try value.encode(to: encoder)
        case .authorizationStateWaitRegistration(let value):
            try container.encode(Kind.authorizationStateWaitRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .authorizationStateWaitPassword(let value):
            try container.encode(Kind.authorizationStateWaitPassword, forKey: .type)
            try value.encode(to: encoder)
        case .authorizationStateReady:
            try container.encode(Kind.authorizationStateReady, forKey: .type)
        case .authorizationStateLoggingOut:
            try container.encode(Kind.authorizationStateLoggingOut, forKey: .type)
        case .authorizationStateClosing:
            try container.encode(Kind.authorizationStateClosing, forKey: .type)
        case .authorizationStateClosed:
            try container.encode(Kind.authorizationStateClosed, forKey: .type)
        }
    }
}

/// TDLib needs an encryption key to decrypt the local database
public struct AuthorizationStateWaitEncryptionKey: Codable, Equatable {

    /// True, if the database is currently encrypted
    public let isEncrypted: Bool


    public init(isEncrypted: Bool) {
        self.isEncrypted = isEncrypted
    }
}

/// TDLib needs the user's authentication code to authorize
public struct AuthorizationStateWaitCode: Codable, Equatable {

    /// Information about the authorization code that was sent
    public let codeInfo: AuthenticationCodeInfo


    public init(codeInfo: AuthenticationCodeInfo) {
        self.codeInfo = codeInfo
    }
}

/// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
public struct AuthorizationStateWaitOtherDeviceConfirmation: Codable, Equatable {

    /// A tg:// URL for the QR code. The link will be updated frequently
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration
public struct AuthorizationStateWaitRegistration: Codable, Equatable {

    /// Telegram terms of service
    public let termsOfService: TermsOfService


    public init(termsOfService: TermsOfService) {
        self.termsOfService = termsOfService
    }
}

/// The user has been authorized, but needs to enter a password to start using the application
public struct AuthorizationStateWaitPassword: Codable, Equatable {

    /// True, if a recovery email address has been set up
    public let hasRecoveryEmailAddress: Bool

    /// Hint for the password; may be empty
    public let passwordHint: String

    /// Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
    public let recoveryEmailAddressPattern: String


    public init(
        hasRecoveryEmailAddress: Bool,
        passwordHint: String,
        recoveryEmailAddressPattern: String
    ) {
        self.hasRecoveryEmailAddress = hasRecoveryEmailAddress
        self.passwordHint = passwordHint
        self.recoveryEmailAddressPattern = recoveryEmailAddressPattern
    }
}


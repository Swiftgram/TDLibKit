//
//  CheckAuthenticationPasskey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Checks a passkey to log in to the corresponding account. Call getAuthenticationPasskeyParameters to get parameters for the passkey. Works only when the current authorization state is authorizationStateWaitPhoneNumber or authorizationStateWaitOtherDeviceConfirmation, or if there is no pending authentication query and the current authorization state is authorizationStateWaitPremiumPurchase, authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
public struct CheckAuthenticationPasskey: Codable, Equatable, Hashable {

    /// Authenticator data of the application that created the credential
    public let authenticatorData: Data?

    /// JSON-encoded client data
    public let clientData: String?

    /// Base64url-encoded identifier of the credential
    public let credentialId: String?

    /// Cryptographic signature of the credential
    public let signature: Data?

    /// User handle of the passkey
    public let userHandle: Data?


    public init(
        authenticatorData: Data?,
        clientData: String?,
        credentialId: String?,
        signature: Data?,
        userHandle: Data?
    ) {
        self.authenticatorData = authenticatorData
        self.clientData = clientData
        self.credentialId = credentialId
        self.signature = signature
        self.userHandle = userHandle
    }
}


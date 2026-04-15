//
//  AddLoginPasskey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Adds a passkey allowed to be used for the login by the current user and returns the added passkey. Call getPasskeyParameters to get parameters for creating of the passkey
public struct AddLoginPasskey: Codable, Equatable, Hashable {

    /// Passkey attestation object
    public let attestationObject: Data?

    /// JSON-encoded client data
    public let clientData: String?


    public init(
        attestationObject: Data?,
        clientData: String?
    ) {
        self.attestationObject = attestationObject
        self.clientData = clientData
    }
}


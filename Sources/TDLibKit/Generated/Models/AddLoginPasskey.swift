//
//  AddLoginPasskey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Adds a passkey allowed to be used for the login by the current user and returns the added passkey. Call getPasskeyParameters to get parameters for creating the passkey
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


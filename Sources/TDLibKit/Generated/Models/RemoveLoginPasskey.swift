//
//  RemoveLoginPasskey.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Removes a passkey from the list of passkeys allowed to be used for the login by the current user
public struct RemoveLoginPasskey: Codable, Equatable, Hashable {

    /// Unique identifier of the passkey to remove
    public let passkeyId: String?


    public init(passkeyId: String?) {
        self.passkeyId = passkeyId
    }
}


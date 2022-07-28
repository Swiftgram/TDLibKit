//
//  SetRecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation
public struct SetRecoveryEmailAddress: Codable, Equatable {

    /// New recovery email address
    public let newRecoveryEmailAddress: String?

    /// Password of the current user
    public let password: String?


    public init(
        newRecoveryEmailAddress: String?,
        password: String?
    ) {
        self.newRecoveryEmailAddress = newRecoveryEmailAddress
        self.password = password
    }
}


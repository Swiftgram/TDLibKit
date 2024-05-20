//
//  RecoverAuthenticationPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Recovers the 2-step verification password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
public struct RecoverAuthenticationPassword: Codable, Equatable, Hashable {

    /// New password hint; may be empty
    public let newHint: String?

    /// New 2-step verification password of the user; may be empty to remove the password
    public let newPassword: String?

    /// Recovery code to check
    public let recoveryCode: String?


    public init(
        newHint: String?,
        newPassword: String?,
        recoveryCode: String?
    ) {
        self.newHint = newHint
        self.newPassword = newPassword
        self.recoveryCode = recoveryCode
    }
}


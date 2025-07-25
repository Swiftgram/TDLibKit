//
//  RecoverPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up
public struct RecoverPassword: Codable, Equatable, Hashable {

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


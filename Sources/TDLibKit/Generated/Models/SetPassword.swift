//
//  SetPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes the 2-step verification password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed
public struct SetPassword: Codable, Equatable, Hashable {

    /// New password hint; may be empty
    public let newHint: String?

    /// New 2-step verification password of the user; may be empty to remove the password
    public let newPassword: String?

    /// New recovery email address; may be empty
    public let newRecoveryEmailAddress: String?

    /// Previous 2-step verification password of the user
    public let oldPassword: String?

    /// Pass true to change also the recovery email address
    public let setRecoveryEmailAddress: Bool?


    public init(
        newHint: String?,
        newPassword: String?,
        newRecoveryEmailAddress: String?,
        oldPassword: String?,
        setRecoveryEmailAddress: Bool?
    ) {
        self.newHint = newHint
        self.newPassword = newPassword
        self.newRecoveryEmailAddress = newRecoveryEmailAddress
        self.oldPassword = oldPassword
        self.setRecoveryEmailAddress = setRecoveryEmailAddress
    }
}


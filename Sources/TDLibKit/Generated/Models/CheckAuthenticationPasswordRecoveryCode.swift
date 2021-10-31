//
//  CheckAuthenticationPasswordRecoveryCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Checks whether a password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
public struct CheckAuthenticationPasswordRecoveryCode: Codable {

    /// Recovery code to check
    public let recoveryCode: String?


    public init(recoveryCode: String?) {
        self.recoveryCode = recoveryCode
    }
}


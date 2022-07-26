//
//  CheckAuthenticationPasswordRecoveryCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Checks whether a password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
public struct CheckAuthenticationPasswordRecoveryCode: Codable, Equatable {

    /// Recovery code to check
    public let recoveryCode: String?


    public init(recoveryCode: String?) {
        self.recoveryCode = recoveryCode
    }
}


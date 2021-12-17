//
//  CheckPasswordRecoveryCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Checks whether a 2-step verification password recovery code sent to an email address is valid
public struct CheckPasswordRecoveryCode: Codable, Equatable {

    /// Recovery code to check
    public let recoveryCode: String?


    public init(recoveryCode: String?) {
        self.recoveryCode = recoveryCode
    }
}


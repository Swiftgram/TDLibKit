//
//  CheckPasswordRecoveryCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
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


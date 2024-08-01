//
//  CheckPasswordRecoveryCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Checks whether a 2-step verification password recovery code sent to an email address is valid
public struct CheckPasswordRecoveryCode: Codable, Equatable, Hashable {

    /// Recovery code to check
    public let recoveryCode: String?


    public init(recoveryCode: String?) {
        self.recoveryCode = recoveryCode
    }
}


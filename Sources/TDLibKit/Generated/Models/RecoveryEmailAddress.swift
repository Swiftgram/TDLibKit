//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
//

import Foundation


/// Contains information about the current recovery email address
public struct RecoveryEmailAddress: Codable, Equatable {

    /// Recovery email address
    public let recoveryEmailAddress: String


    public init(recoveryEmailAddress: String) {
        self.recoveryEmailAddress = recoveryEmailAddress
    }
}


//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e86b323d
//  https://github.com/tdlib/td/tree/e86b323d
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


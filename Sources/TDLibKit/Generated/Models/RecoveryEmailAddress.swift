//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-3f763f6f
//  https://github.com/tdlib/td/tree/3f763f6f
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


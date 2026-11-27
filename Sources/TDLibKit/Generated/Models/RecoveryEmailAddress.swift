//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains information about the current recovery email address
public struct RecoveryEmailAddress: Codable, Equatable, Hashable {

    /// Recovery email address
    public let recoveryEmailAddress: String


    public init(recoveryEmailAddress: String) {
        self.recoveryEmailAddress = recoveryEmailAddress
    }
}


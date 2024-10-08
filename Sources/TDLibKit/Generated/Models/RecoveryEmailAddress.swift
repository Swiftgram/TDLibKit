//
//  RecoveryEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
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


//
//  TemporaryPasswordState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains information about the availability of a temporary password
public struct TemporaryPasswordState: Codable, Equatable, Hashable {

    /// True, if a temporary password is available
    public let hasPassword: Bool

    /// Time left before the temporary password expires, in seconds
    public let validFor: Int


    public init(
        hasPassword: Bool,
        validFor: Int
    ) {
        self.hasPassword = hasPassword
        self.validFor = validFor
    }
}


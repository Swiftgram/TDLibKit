//
//  TemporaryPasswordState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Returns information about the availability of a temporary password, which can be used for payments
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


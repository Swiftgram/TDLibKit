//
//  Passkeys.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
//

import Foundation


/// Contains a list of passkeys
public struct Passkeys: Codable, Equatable, Hashable {

    /// List of passkeys
    public let passkeys: [Passkey]


    public init(passkeys: [Passkey]) {
        self.passkeys = passkeys
    }
}


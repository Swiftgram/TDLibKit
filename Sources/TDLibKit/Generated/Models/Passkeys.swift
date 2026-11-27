//
//  Passkeys.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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


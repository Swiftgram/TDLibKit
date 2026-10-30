//
//  Passkeys.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-18d36ada
//  https://github.com/tdlib/td/tree/18d36ada
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


//
//  Passkeys.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
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


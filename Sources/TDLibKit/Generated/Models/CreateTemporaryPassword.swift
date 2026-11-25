//
//  CreateTemporaryPassword.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Creates a new temporary password
public struct CreateTemporaryPassword: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user
    public let password: String?

    /// Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
    public let validFor: Int?


    public init(
        password: String?,
        validFor: Int?
    ) {
        self.password = password
        self.validFor = validFor
    }
}


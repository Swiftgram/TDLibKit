//
//  CloseBirthdayUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Describes a user that had or will have a birthday soon
public struct CloseBirthdayUser: Codable, Equatable, Hashable {

    /// Birthdate of the user
    public let birthdate: Birthdate

    /// User identifier
    public let userId: Int64


    public init(
        birthdate: Birthdate,
        userId: Int64
    ) {
        self.birthdate = birthdate
        self.userId = userId
    }
}


//
//  CloseBirthdayUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
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


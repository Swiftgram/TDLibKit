//
//  SuggestUserBirthdate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Suggests a birthdate to another regular user with common messages and allowing non-paid messages
public struct SuggestUserBirthdate: Codable, Equatable, Hashable {

    /// Birthdate to suggest
    public let birthdate: Birthdate?

    /// User identifier
    public let userId: Int64?


    public init(
        birthdate: Birthdate?,
        userId: Int64?
    ) {
        self.birthdate = birthdate
        self.userId = userId
    }
}


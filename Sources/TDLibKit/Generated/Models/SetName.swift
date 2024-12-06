//
//  SetName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Changes the first and last name of the current user
public struct SetName: Codable, Equatable, Hashable {

    /// The new value of the first name for the current user; 1-64 characters
    public let firstName: String?

    /// The new value of the optional last name for the current user; 0-64 characters
    public let lastName: String?


    public init(
        firstName: String?,
        lastName: String?
    ) {
        self.firstName = firstName
        self.lastName = lastName
    }
}


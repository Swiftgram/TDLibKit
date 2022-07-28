//
//  RegisterUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
public struct RegisterUser: Codable, Equatable {

    /// The first name of the user; 1-64 characters
    public let firstName: String?

    /// The last name of the user; 0-64 characters
    public let lastName: String?


    public init(
        firstName: String?,
        lastName: String?
    ) {
        self.firstName = firstName
        self.lastName = lastName
    }
}


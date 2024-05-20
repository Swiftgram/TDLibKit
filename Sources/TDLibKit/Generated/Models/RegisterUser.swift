//
//  RegisterUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
public struct RegisterUser: Codable, Equatable, Hashable {

    /// Pass true to disable notification about the current user joining Telegram for other users that added them to contact list
    public let disableNotification: Bool?

    /// The first name of the user; 1-64 characters
    public let firstName: String?

    /// The last name of the user; 0-64 characters
    public let lastName: String?


    public init(
        disableNotification: Bool?,
        firstName: String?,
        lastName: String?
    ) {
        self.disableNotification = disableNotification
        self.firstName = firstName
        self.lastName = lastName
    }
}


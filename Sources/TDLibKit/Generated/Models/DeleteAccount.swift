//
//  DeleteAccount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
public struct DeleteAccount: Codable, Equatable, Hashable {

    /// The 2-step verification password of the current user. If the current user isn't authorized, then an empty string can be passed and account deletion can be canceled within one week
    public let password: String?

    /// The reason why the account was deleted; optional
    public let reason: String?


    public init(
        password: String?,
        reason: String?
    ) {
        self.password = password
        self.reason = reason
    }
}


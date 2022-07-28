//
//  DeleteAccount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
public struct DeleteAccount: Codable, Equatable {

    /// The reason why the account was deleted; optional
    public let reason: String?


    public init(reason: String?) {
        self.reason = reason
    }
}


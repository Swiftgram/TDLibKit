//
//  SetAuthenticationEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Sets the email address of the user and sends an authentication code to the email address. Works only when the current authorization state is authorizationStateWaitEmailAddress
public struct SetAuthenticationEmailAddress: Codable, Equatable {

    /// The email address of the user
    public let emailAddress: String?


    public init(emailAddress: String?) {
        self.emailAddress = emailAddress
    }
}


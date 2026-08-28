//
//  CheckAuthenticationWebToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Checks a web token to log in to the corresponding account; for official Telegram apps only. Works only when the current authorization state is authorizationStateWaitPhoneNumber or authorizationStateWaitOtherDeviceConfirmation
public struct CheckAuthenticationWebToken: Codable, Equatable, Hashable {

    /// Identifier of the datacenter of the user
    public let dcId: Int?

    /// The token to check
    public let token: String?


    public init(
        dcId: Int?,
        token: String?
    ) {
        self.dcId = dcId
        self.token = token
    }
}


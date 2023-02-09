//
//  GetPassportAuthorizationFormAvailableElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
public struct GetPassportAuthorizationFormAvailableElements: Codable, Equatable {

    /// Authorization form identifier
    public let authorizationFormId: Int?

    /// The 2-step verification password of the current user
    public let password: String?


    public init(
        authorizationFormId: Int?,
        password: String?
    ) {
        self.authorizationFormId = authorizationFormId
        self.password = password
    }
}


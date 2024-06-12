//
//  GetPassportAuthorizationFormAvailableElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
public struct GetPassportAuthorizationFormAvailableElements: Codable, Equatable, Hashable {

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


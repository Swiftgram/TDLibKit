//
//  GetPassportAuthorizationFormAvailableElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. The result can be received only once for each authorization form
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


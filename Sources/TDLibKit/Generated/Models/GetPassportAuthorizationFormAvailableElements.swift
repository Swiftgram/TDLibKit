//
//  GetPassportAuthorizationFormAvailableElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
public struct GetPassportAuthorizationFormAvailableElements: Codable {

    /// Authorization form identifier
    public let autorizationFormId: Int

    /// Password of the current user
    public let password: String


    public init(
        autorizationFormId: Int,
        password: String
    ) {
        self.autorizationFormId = autorizationFormId
        self.password = password
    }
}


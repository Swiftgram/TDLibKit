//
//  GetPassportAuthorizationFormAvailableElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
public struct GetPassportAuthorizationFormAvailableElements: Codable, Equatable {

    /// Authorization form identifier
    public let autorizationFormId: Int?

    /// Password of the current user
    public let password: String?


    public init(
        autorizationFormId: Int?,
        password: String?
    ) {
        self.autorizationFormId = autorizationFormId
        self.password = password
    }
}


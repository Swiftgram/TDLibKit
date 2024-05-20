//
//  SendPassportAuthorizationForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
public struct SendPassportAuthorizationForm: Codable, Equatable, Hashable {

    /// Authorization form identifier
    public let authorizationFormId: Int?

    /// Types of Telegram Passport elements chosen by user to complete the authorization form
    public let types: [PassportElementType]?


    public init(
        authorizationFormId: Int?,
        types: [PassportElementType]?
    ) {
        self.authorizationFormId = authorizationFormId
        self.types = types
    }
}


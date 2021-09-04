//
//  SendPassportAuthorizationForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements are going to be reused
public struct SendPassportAuthorizationForm: Codable {

    /// Authorization form identifier
    public let autorizationFormId: Int

    /// Types of Telegram Passport elements chosen by user to complete the authorization form
    public let types: [PassportElementType]


    public init(
        autorizationFormId: Int,
        types: [PassportElementType]
    ) {
        self.autorizationFormId = autorizationFormId
        self.types = types
    }
}

//
//  SetPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
public struct SetPassportElement: Codable {

    /// Input Telegram Passport element
    public let element: InputPassportElement

    /// Password of the current user
    public let password: String


    public init(
        element: InputPassportElement,
        password: String
    ) {
        self.element = element
        self.password = password
    }
}


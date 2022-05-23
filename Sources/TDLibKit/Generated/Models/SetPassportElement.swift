//
//  SetPassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
public struct SetPassportElement: Codable, Equatable {

    /// Input Telegram Passport element
    public let element: InputPassportElement?

    /// Password of the current user
    public let password: String?


    public init(
        element: InputPassportElement?,
        password: String?
    ) {
        self.element = element
        self.password = password
    }
}


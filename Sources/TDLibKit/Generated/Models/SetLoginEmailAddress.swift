//
//  SetLoginEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the login email address of the user. The email address can be changed only if the current user already has login email and passwordState.login_email_address_pattern is non-empty. The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode. To use Apple ID/Google ID instead of an email address, call checkLoginEmailAddressCode directly
public struct SetLoginEmailAddress: Codable, Equatable, Hashable {

    /// New login email address
    public let newLoginEmailAddress: String?


    public init(newLoginEmailAddress: String?) {
        self.newLoginEmailAddress = newLoginEmailAddress
    }
}


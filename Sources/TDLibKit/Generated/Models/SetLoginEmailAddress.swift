//
//  SetLoginEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Changes the login email address of the user. The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode. To use Apple ID/Google ID instead of a email address, call checkLoginEmailAddressCode directly
public struct SetLoginEmailAddress: Codable, Equatable {

    /// New login email address
    public let newLoginEmailAddress: String?


    public init(newLoginEmailAddress: String?) {
        self.newLoginEmailAddress = newLoginEmailAddress
    }
}


//
//  SetLoginEmailAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-3ec53c8d
//  https://github.com/tdlib/td/tree/3ec53c8d
//

import Foundation


/// Changes the login email address of the user. The change will not be applied until the new login email address is confirmed with `checkLoginEmailAddressCode`. To use Apple ID/Google ID instead of a email address, call `checkLoginEmailAddressCode` directly
public struct SetLoginEmailAddress: Codable, Equatable {

    /// New login email address
    public let newLoginEmailAddress: String?


    public init(newLoginEmailAddress: String?) {
        self.newLoginEmailAddress = newLoginEmailAddress
    }
}


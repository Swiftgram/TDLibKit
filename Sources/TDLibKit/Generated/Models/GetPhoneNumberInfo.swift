//
//  GetPhoneNumberInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Returns information about a phone number by its prefix. Can be called before authorization
public struct GetPhoneNumberInfo: Codable, Equatable, Hashable {

    /// The phone number prefix
    public let phoneNumberPrefix: String?


    public init(phoneNumberPrefix: String?) {
        self.phoneNumberPrefix = phoneNumberPrefix
    }
}


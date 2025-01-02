//
//  GetPhoneNumberInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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


//
//  GetPhoneNumberInfoSync.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously
public struct GetPhoneNumberInfoSync: Codable {

    /// A two-letter ISO 639-1 country code for country information localization
    public let languageCode: String?

    /// The phone number prefix
    public let phoneNumberPrefix: String?


    public init(
        languageCode: String?,
        phoneNumberPrefix: String?
    ) {
        self.languageCode = languageCode
        self.phoneNumberPrefix = phoneNumberPrefix
    }
}


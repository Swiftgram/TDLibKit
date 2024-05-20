//
//  PhoneNumberInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a phone number
public struct PhoneNumberInfo: Codable, Equatable, Hashable {

    /// Information about the country to which the phone number belongs; may be null
    public let country: CountryInfo?

    /// The part of the phone number denoting country calling code or its part
    public let countryCallingCode: String

    /// The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user
    public let formattedPhoneNumber: String

    /// True, if the phone number was bought at https://fragment.com and isn't tied to a SIM card. Information about the phone number can be received using getCollectibleItemInfo
    public let isAnonymous: Bool


    public init(
        country: CountryInfo?,
        countryCallingCode: String,
        formattedPhoneNumber: String,
        isAnonymous: Bool
    ) {
        self.country = country
        self.countryCallingCode = countryCallingCode
        self.formattedPhoneNumber = formattedPhoneNumber
        self.isAnonymous = isAnonymous
    }
}


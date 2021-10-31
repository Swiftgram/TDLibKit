//
//  PhoneNumberInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Contains information about a phone number
public struct PhoneNumberInfo: Codable {

    /// Information about the country to which the phone number belongs; may be null
    public let country: CountryInfo?

    /// The part of the phone number denoting country calling code or its part
    public let countryCallingCode: String

    /// The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user
    public let formattedPhoneNumber: String


    public init(
        country: CountryInfo?,
        countryCallingCode: String,
        formattedPhoneNumber: String
    ) {
        self.country = country
        self.countryCallingCode = countryCallingCode
        self.formattedPhoneNumber = formattedPhoneNumber
    }
}


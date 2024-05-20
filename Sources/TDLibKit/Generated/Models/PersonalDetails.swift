//
//  PersonalDetails.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains the user's personal details
public struct PersonalDetails: Codable, Equatable, Hashable {

    /// Birthdate of the user
    public let birthdate: Date

    /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
    public let countryCode: String

    /// First name of the user written in English; 1-255 characters
    public let firstName: String

    /// Gender of the user, "male" or "female"
    public let gender: String

    /// Last name of the user written in English; 1-255 characters
    public let lastName: String

    /// Middle name of the user written in English; 0-255 characters
    public let middleName: String

    /// Native first name of the user; 1-255 characters
    public let nativeFirstName: String

    /// Native last name of the user; 1-255 characters
    public let nativeLastName: String

    /// Native middle name of the user; 0-255 characters
    public let nativeMiddleName: String

    /// A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
    public let residenceCountryCode: String


    public init(
        birthdate: Date,
        countryCode: String,
        firstName: String,
        gender: String,
        lastName: String,
        middleName: String,
        nativeFirstName: String,
        nativeLastName: String,
        nativeMiddleName: String,
        residenceCountryCode: String
    ) {
        self.birthdate = birthdate
        self.countryCode = countryCode
        self.firstName = firstName
        self.gender = gender
        self.lastName = lastName
        self.middleName = middleName
        self.nativeFirstName = nativeFirstName
        self.nativeLastName = nativeLastName
        self.nativeMiddleName = nativeMiddleName
        self.residenceCountryCode = residenceCountryCode
    }
}


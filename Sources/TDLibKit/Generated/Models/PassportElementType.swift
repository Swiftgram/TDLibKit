//
//  PassportElementType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains the type of Telegram Passport element
public indirect enum PassportElementType: Codable, Equatable, Hashable {

    /// A Telegram Passport element containing the user's personal details
    case passportElementTypePersonalDetails

    /// A Telegram Passport element containing the user's passport
    case passportElementTypePassport

    /// A Telegram Passport element containing the user's driver license
    case passportElementTypeDriverLicense

    /// A Telegram Passport element containing the user's identity card
    case passportElementTypeIdentityCard

    /// A Telegram Passport element containing the user's internal passport
    case passportElementTypeInternalPassport

    /// A Telegram Passport element containing the user's address
    case passportElementTypeAddress

    /// A Telegram Passport element containing the user's utility bill
    case passportElementTypeUtilityBill

    /// A Telegram Passport element containing the user's bank statement
    case passportElementTypeBankStatement

    /// A Telegram Passport element containing the user's rental agreement
    case passportElementTypeRentalAgreement

    /// A Telegram Passport element containing the registration page of the user's passport
    case passportElementTypePassportRegistration

    /// A Telegram Passport element containing the user's temporary registration
    case passportElementTypeTemporaryRegistration

    /// A Telegram Passport element containing the user's phone number
    case passportElementTypePhoneNumber

    /// A Telegram Passport element containing the user's email address
    case passportElementTypeEmailAddress


    private enum Kind: String, Codable {
        case passportElementTypePersonalDetails
        case passportElementTypePassport
        case passportElementTypeDriverLicense
        case passportElementTypeIdentityCard
        case passportElementTypeInternalPassport
        case passportElementTypeAddress
        case passportElementTypeUtilityBill
        case passportElementTypeBankStatement
        case passportElementTypeRentalAgreement
        case passportElementTypePassportRegistration
        case passportElementTypeTemporaryRegistration
        case passportElementTypePhoneNumber
        case passportElementTypeEmailAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .passportElementTypePersonalDetails:
            self = .passportElementTypePersonalDetails
        case .passportElementTypePassport:
            self = .passportElementTypePassport
        case .passportElementTypeDriverLicense:
            self = .passportElementTypeDriverLicense
        case .passportElementTypeIdentityCard:
            self = .passportElementTypeIdentityCard
        case .passportElementTypeInternalPassport:
            self = .passportElementTypeInternalPassport
        case .passportElementTypeAddress:
            self = .passportElementTypeAddress
        case .passportElementTypeUtilityBill:
            self = .passportElementTypeUtilityBill
        case .passportElementTypeBankStatement:
            self = .passportElementTypeBankStatement
        case .passportElementTypeRentalAgreement:
            self = .passportElementTypeRentalAgreement
        case .passportElementTypePassportRegistration:
            self = .passportElementTypePassportRegistration
        case .passportElementTypeTemporaryRegistration:
            self = .passportElementTypeTemporaryRegistration
        case .passportElementTypePhoneNumber:
            self = .passportElementTypePhoneNumber
        case .passportElementTypeEmailAddress:
            self = .passportElementTypeEmailAddress
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .passportElementTypePersonalDetails:
            try container.encode(Kind.passportElementTypePersonalDetails, forKey: .type)
        case .passportElementTypePassport:
            try container.encode(Kind.passportElementTypePassport, forKey: .type)
        case .passportElementTypeDriverLicense:
            try container.encode(Kind.passportElementTypeDriverLicense, forKey: .type)
        case .passportElementTypeIdentityCard:
            try container.encode(Kind.passportElementTypeIdentityCard, forKey: .type)
        case .passportElementTypeInternalPassport:
            try container.encode(Kind.passportElementTypeInternalPassport, forKey: .type)
        case .passportElementTypeAddress:
            try container.encode(Kind.passportElementTypeAddress, forKey: .type)
        case .passportElementTypeUtilityBill:
            try container.encode(Kind.passportElementTypeUtilityBill, forKey: .type)
        case .passportElementTypeBankStatement:
            try container.encode(Kind.passportElementTypeBankStatement, forKey: .type)
        case .passportElementTypeRentalAgreement:
            try container.encode(Kind.passportElementTypeRentalAgreement, forKey: .type)
        case .passportElementTypePassportRegistration:
            try container.encode(Kind.passportElementTypePassportRegistration, forKey: .type)
        case .passportElementTypeTemporaryRegistration:
            try container.encode(Kind.passportElementTypeTemporaryRegistration, forKey: .type)
        case .passportElementTypePhoneNumber:
            try container.encode(Kind.passportElementTypePhoneNumber, forKey: .type)
        case .passportElementTypeEmailAddress:
            try container.encode(Kind.passportElementTypeEmailAddress, forKey: .type)
        }
    }
}


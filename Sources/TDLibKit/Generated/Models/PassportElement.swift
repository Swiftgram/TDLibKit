//
//  PassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Telegram Passport element
public indirect enum PassportElement: Codable, Equatable, Hashable {

    /// A Telegram Passport element containing the user's personal details
    case passportElementPersonalDetails(PassportElementPersonalDetails)

    /// A Telegram Passport element containing the user's passport
    case passportElementPassport(PassportElementPassport)

    /// A Telegram Passport element containing the user's driver license
    case passportElementDriverLicense(PassportElementDriverLicense)

    /// A Telegram Passport element containing the user's identity card
    case passportElementIdentityCard(PassportElementIdentityCard)

    /// A Telegram Passport element containing the user's internal passport
    case passportElementInternalPassport(PassportElementInternalPassport)

    /// A Telegram Passport element containing the user's address
    case passportElementAddress(PassportElementAddress)

    /// A Telegram Passport element containing the user's utility bill
    case passportElementUtilityBill(PassportElementUtilityBill)

    /// A Telegram Passport element containing the user's bank statement
    case passportElementBankStatement(PassportElementBankStatement)

    /// A Telegram Passport element containing the user's rental agreement
    case passportElementRentalAgreement(PassportElementRentalAgreement)

    /// A Telegram Passport element containing the user's passport registration pages
    case passportElementPassportRegistration(PassportElementPassportRegistration)

    /// A Telegram Passport element containing the user's temporary registration
    case passportElementTemporaryRegistration(PassportElementTemporaryRegistration)

    /// A Telegram Passport element containing the user's phone number
    case passportElementPhoneNumber(PassportElementPhoneNumber)

    /// A Telegram Passport element containing the user's email address
    case passportElementEmailAddress(PassportElementEmailAddress)


    private enum Kind: String, Codable {
        case passportElementPersonalDetails
        case passportElementPassport
        case passportElementDriverLicense
        case passportElementIdentityCard
        case passportElementInternalPassport
        case passportElementAddress
        case passportElementUtilityBill
        case passportElementBankStatement
        case passportElementRentalAgreement
        case passportElementPassportRegistration
        case passportElementTemporaryRegistration
        case passportElementPhoneNumber
        case passportElementEmailAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .passportElementPersonalDetails:
            let value = try PassportElementPersonalDetails(from: decoder)
            self = .passportElementPersonalDetails(value)
        case .passportElementPassport:
            let value = try PassportElementPassport(from: decoder)
            self = .passportElementPassport(value)
        case .passportElementDriverLicense:
            let value = try PassportElementDriverLicense(from: decoder)
            self = .passportElementDriverLicense(value)
        case .passportElementIdentityCard:
            let value = try PassportElementIdentityCard(from: decoder)
            self = .passportElementIdentityCard(value)
        case .passportElementInternalPassport:
            let value = try PassportElementInternalPassport(from: decoder)
            self = .passportElementInternalPassport(value)
        case .passportElementAddress:
            let value = try PassportElementAddress(from: decoder)
            self = .passportElementAddress(value)
        case .passportElementUtilityBill:
            let value = try PassportElementUtilityBill(from: decoder)
            self = .passportElementUtilityBill(value)
        case .passportElementBankStatement:
            let value = try PassportElementBankStatement(from: decoder)
            self = .passportElementBankStatement(value)
        case .passportElementRentalAgreement:
            let value = try PassportElementRentalAgreement(from: decoder)
            self = .passportElementRentalAgreement(value)
        case .passportElementPassportRegistration:
            let value = try PassportElementPassportRegistration(from: decoder)
            self = .passportElementPassportRegistration(value)
        case .passportElementTemporaryRegistration:
            let value = try PassportElementTemporaryRegistration(from: decoder)
            self = .passportElementTemporaryRegistration(value)
        case .passportElementPhoneNumber:
            let value = try PassportElementPhoneNumber(from: decoder)
            self = .passportElementPhoneNumber(value)
        case .passportElementEmailAddress:
            let value = try PassportElementEmailAddress(from: decoder)
            self = .passportElementEmailAddress(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .passportElementPersonalDetails(let value):
            try container.encode(Kind.passportElementPersonalDetails, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementPassport(let value):
            try container.encode(Kind.passportElementPassport, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementDriverLicense(let value):
            try container.encode(Kind.passportElementDriverLicense, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementIdentityCard(let value):
            try container.encode(Kind.passportElementIdentityCard, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementInternalPassport(let value):
            try container.encode(Kind.passportElementInternalPassport, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementAddress(let value):
            try container.encode(Kind.passportElementAddress, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementUtilityBill(let value):
            try container.encode(Kind.passportElementUtilityBill, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementBankStatement(let value):
            try container.encode(Kind.passportElementBankStatement, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementRentalAgreement(let value):
            try container.encode(Kind.passportElementRentalAgreement, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementPassportRegistration(let value):
            try container.encode(Kind.passportElementPassportRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementTemporaryRegistration(let value):
            try container.encode(Kind.passportElementTemporaryRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementPhoneNumber(let value):
            try container.encode(Kind.passportElementPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .passportElementEmailAddress(let value):
            try container.encode(Kind.passportElementEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Telegram Passport element containing the user's personal details
public struct PassportElementPersonalDetails: Codable, Equatable, Hashable {

    /// Personal details of the user
    public let personalDetails: PersonalDetails


    public init(personalDetails: PersonalDetails) {
        self.personalDetails = personalDetails
    }
}

/// A Telegram Passport element containing the user's passport
public struct PassportElementPassport: Codable, Equatable, Hashable {

    /// Passport
    public let passport: IdentityDocument


    public init(passport: IdentityDocument) {
        self.passport = passport
    }
}

/// A Telegram Passport element containing the user's driver license
public struct PassportElementDriverLicense: Codable, Equatable, Hashable {

    /// Driver license
    public let driverLicense: IdentityDocument


    public init(driverLicense: IdentityDocument) {
        self.driverLicense = driverLicense
    }
}

/// A Telegram Passport element containing the user's identity card
public struct PassportElementIdentityCard: Codable, Equatable, Hashable {

    /// Identity card
    public let identityCard: IdentityDocument


    public init(identityCard: IdentityDocument) {
        self.identityCard = identityCard
    }
}

/// A Telegram Passport element containing the user's internal passport
public struct PassportElementInternalPassport: Codable, Equatable, Hashable {

    /// Internal passport
    public let internalPassport: IdentityDocument


    public init(internalPassport: IdentityDocument) {
        self.internalPassport = internalPassport
    }
}

/// A Telegram Passport element containing the user's address
public struct PassportElementAddress: Codable, Equatable, Hashable {

    /// Address
    public let address: Address


    public init(address: Address) {
        self.address = address
    }
}

/// A Telegram Passport element containing the user's utility bill
public struct PassportElementUtilityBill: Codable, Equatable, Hashable {

    /// Utility bill
    public let utilityBill: PersonalDocument


    public init(utilityBill: PersonalDocument) {
        self.utilityBill = utilityBill
    }
}

/// A Telegram Passport element containing the user's bank statement
public struct PassportElementBankStatement: Codable, Equatable, Hashable {

    /// Bank statement
    public let bankStatement: PersonalDocument


    public init(bankStatement: PersonalDocument) {
        self.bankStatement = bankStatement
    }
}

/// A Telegram Passport element containing the user's rental agreement
public struct PassportElementRentalAgreement: Codable, Equatable, Hashable {

    /// Rental agreement
    public let rentalAgreement: PersonalDocument


    public init(rentalAgreement: PersonalDocument) {
        self.rentalAgreement = rentalAgreement
    }
}

/// A Telegram Passport element containing the user's passport registration pages
public struct PassportElementPassportRegistration: Codable, Equatable, Hashable {

    /// Passport registration pages
    public let passportRegistration: PersonalDocument


    public init(passportRegistration: PersonalDocument) {
        self.passportRegistration = passportRegistration
    }
}

/// A Telegram Passport element containing the user's temporary registration
public struct PassportElementTemporaryRegistration: Codable, Equatable, Hashable {

    /// Temporary registration
    public let temporaryRegistration: PersonalDocument


    public init(temporaryRegistration: PersonalDocument) {
        self.temporaryRegistration = temporaryRegistration
    }
}

/// A Telegram Passport element containing the user's phone number
public struct PassportElementPhoneNumber: Codable, Equatable, Hashable {

    /// Phone number
    public let phoneNumber: String


    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
}

/// A Telegram Passport element containing the user's email address
public struct PassportElementEmailAddress: Codable, Equatable, Hashable {

    /// Email address
    public let emailAddress: String


    public init(emailAddress: String) {
        self.emailAddress = emailAddress
    }
}


//
//  AgeVerificationParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes parameters for age verification of the current user
public struct AgeVerificationParameters: Codable, Equatable, Hashable {

    /// Unique name for the country or region, which legislation required age verification. May be used to get the corresponding localization key
    public let country: String

    /// The minimum age required to view restricted content
    public let minAge: Int

    /// Username of the bot which main Web App may be used to verify age of the user
    public let verificationBotUsername: String


    public init(
        country: String,
        minAge: Int,
        verificationBotUsername: String
    ) {
        self.country = country
        self.minAge = minAge
        self.verificationBotUsername = verificationBotUsername
    }
}


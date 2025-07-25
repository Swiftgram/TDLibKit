//
//  PassportAuthorizationForm.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains information about a Telegram Passport authorization form that was requested
public struct PassportAuthorizationForm: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the authorization form
    public let id: Int

    /// URL for the privacy policy of the service; may be empty
    public let privacyPolicyUrl: String

    /// Telegram Passport elements that must be provided to complete the form
    public let requiredElements: [PassportRequiredElement]


    public init(
        id: Int,
        privacyPolicyUrl: String,
        requiredElements: [PassportRequiredElement]
    ) {
        self.id = id
        self.privacyPolicyUrl = privacyPolicyUrl
        self.requiredElements = requiredElements
    }
}


//
//  PassportSuitableElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Telegram Passport element that was requested by a service
public struct PassportSuitableElement: Codable, Equatable, Hashable {

    /// True, if personal details must include the user's name in the language of their country of residence
    public let isNativeNameRequired: Bool

    /// True, if a selfie is required with the identity document
    public let isSelfieRequired: Bool

    /// True, if a certified English translation is required with the document
    public let isTranslationRequired: Bool

    /// Type of the element
    public let type: PassportElementType


    public init(
        isNativeNameRequired: Bool,
        isSelfieRequired: Bool,
        isTranslationRequired: Bool,
        type: PassportElementType
    ) {
        self.isNativeNameRequired = isNativeNameRequired
        self.isSelfieRequired = isSelfieRequired
        self.isTranslationRequired = isTranslationRequired
        self.type = type
    }
}


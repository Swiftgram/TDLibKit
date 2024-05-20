//
//  LanguagePackStringValue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the value of a string in a language pack
public indirect enum LanguagePackStringValue: Codable, Equatable, Hashable {

    /// An ordinary language pack string
    case languagePackStringValueOrdinary(LanguagePackStringValueOrdinary)

    /// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information
    case languagePackStringValuePluralized(LanguagePackStringValuePluralized)

    /// A deleted language pack string, the value must be taken from the built-in English language pack
    case languagePackStringValueDeleted


    private enum Kind: String, Codable {
        case languagePackStringValueOrdinary
        case languagePackStringValuePluralized
        case languagePackStringValueDeleted
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .languagePackStringValueOrdinary:
            let value = try LanguagePackStringValueOrdinary(from: decoder)
            self = .languagePackStringValueOrdinary(value)
        case .languagePackStringValuePluralized:
            let value = try LanguagePackStringValuePluralized(from: decoder)
            self = .languagePackStringValuePluralized(value)
        case .languagePackStringValueDeleted:
            self = .languagePackStringValueDeleted
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .languagePackStringValueOrdinary(let value):
            try container.encode(Kind.languagePackStringValueOrdinary, forKey: .type)
            try value.encode(to: encoder)
        case .languagePackStringValuePluralized(let value):
            try container.encode(Kind.languagePackStringValuePluralized, forKey: .type)
            try value.encode(to: encoder)
        case .languagePackStringValueDeleted:
            try container.encode(Kind.languagePackStringValueDeleted, forKey: .type)
        }
    }
}

/// An ordinary language pack string
public struct LanguagePackStringValueOrdinary: Codable, Equatable, Hashable {

    /// String value
    public let value: String


    public init(value: String) {
        self.value = value
    }
}

/// A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information
public struct LanguagePackStringValuePluralized: Codable, Equatable, Hashable {

    /// Value for few objects
    public let fewValue: String

    /// Value for many objects
    public let manyValue: String

    /// Value for one object
    public let oneValue: String

    /// Default value
    public let otherValue: String

    /// Value for two objects
    public let twoValue: String

    /// Value for zero objects
    public let zeroValue: String


    public init(
        fewValue: String,
        manyValue: String,
        oneValue: String,
        otherValue: String,
        twoValue: String,
        zeroValue: String
    ) {
        self.fewValue = fewValue
        self.manyValue = manyValue
        self.oneValue = oneValue
        self.otherValue = otherValue
        self.twoValue = twoValue
        self.zeroValue = zeroValue
    }
}


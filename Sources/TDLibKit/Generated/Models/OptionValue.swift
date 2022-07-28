//
//  OptionValue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents the value of an option
public enum OptionValue: Codable, Equatable {

    /// Represents a boolean option
    case optionValueBoolean(OptionValueBoolean)

    /// Represents an unknown option or an option which has a default value
    case optionValueEmpty

    /// Represents an integer option
    case optionValueInteger(OptionValueInteger)

    /// Represents a string option
    case optionValueString(OptionValueString)


    private enum Kind: String, Codable {
        case optionValueBoolean
        case optionValueEmpty
        case optionValueInteger
        case optionValueString
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .optionValueBoolean:
            let value = try OptionValueBoolean(from: decoder)
            self = .optionValueBoolean(value)
        case .optionValueEmpty:
            self = .optionValueEmpty
        case .optionValueInteger:
            let value = try OptionValueInteger(from: decoder)
            self = .optionValueInteger(value)
        case .optionValueString:
            let value = try OptionValueString(from: decoder)
            self = .optionValueString(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .optionValueBoolean(let value):
            try container.encode(Kind.optionValueBoolean, forKey: .type)
            try value.encode(to: encoder)
        case .optionValueEmpty:
            try container.encode(Kind.optionValueEmpty, forKey: .type)
        case .optionValueInteger(let value):
            try container.encode(Kind.optionValueInteger, forKey: .type)
            try value.encode(to: encoder)
        case .optionValueString(let value):
            try container.encode(Kind.optionValueString, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Represents a boolean option
public struct OptionValueBoolean: Codable, Equatable {

    /// The value of the option
    public let value: Bool


    public init(value: Bool) {
        self.value = value
    }
}

/// Represents an integer option
public struct OptionValueInteger: Codable, Equatable {

    /// The value of the option
    public let value: TdInt64


    public init(value: TdInt64) {
        self.value = value
    }
}

/// Represents a string option
public struct OptionValueString: Codable, Equatable {

    /// The value of the option
    public let value: String


    public init(value: String) {
        self.value = value
    }
}


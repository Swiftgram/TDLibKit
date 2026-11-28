//
//  ButtonStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Describes style of a button
public indirect enum ButtonStyle: Codable, Equatable, Hashable {

    /// The button has the default style
    case buttonStyleDefault

    /// The button has a dark blue color
    case buttonStylePrimary

    /// The button has a red color
    case buttonStyleDanger

    /// The button has a green color
    case buttonStyleSuccess

    /// The button must be shown as a link. The style is allowed only for callback buttons in inlineButton
    case buttonStyleLink


    private enum Kind: String, Codable {
        case buttonStyleDefault
        case buttonStylePrimary
        case buttonStyleDanger
        case buttonStyleSuccess
        case buttonStyleLink
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .buttonStyleDefault:
            self = .buttonStyleDefault
        case .buttonStylePrimary:
            self = .buttonStylePrimary
        case .buttonStyleDanger:
            self = .buttonStyleDanger
        case .buttonStyleSuccess:
            self = .buttonStyleSuccess
        case .buttonStyleLink:
            self = .buttonStyleLink
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .buttonStyleDefault:
            try container.encode(Kind.buttonStyleDefault, forKey: .type)
        case .buttonStylePrimary:
            try container.encode(Kind.buttonStylePrimary, forKey: .type)
        case .buttonStyleDanger:
            try container.encode(Kind.buttonStyleDanger, forKey: .type)
        case .buttonStyleSuccess:
            try container.encode(Kind.buttonStyleSuccess, forKey: .type)
        case .buttonStyleLink:
            try container.encode(Kind.buttonStyleLink, forKey: .type)
        }
    }
}


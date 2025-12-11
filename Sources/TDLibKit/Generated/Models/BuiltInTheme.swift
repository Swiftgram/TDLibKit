//
//  BuiltInTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes a built-in theme of an official app
public indirect enum BuiltInTheme: Codable, Equatable, Hashable {

    /// Classic light theme
    case builtInThemeClassic

    /// Regular light theme
    case builtInThemeDay

    /// Regular dark theme
    case builtInThemeNight

    /// Tinted dark theme
    case builtInThemeTinted

    /// Arctic light theme
    case builtInThemeArctic


    private enum Kind: String, Codable {
        case builtInThemeClassic
        case builtInThemeDay
        case builtInThemeNight
        case builtInThemeTinted
        case builtInThemeArctic
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .builtInThemeClassic:
            self = .builtInThemeClassic
        case .builtInThemeDay:
            self = .builtInThemeDay
        case .builtInThemeNight:
            self = .builtInThemeNight
        case .builtInThemeTinted:
            self = .builtInThemeTinted
        case .builtInThemeArctic:
            self = .builtInThemeArctic
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .builtInThemeClassic:
            try container.encode(Kind.builtInThemeClassic, forKey: .type)
        case .builtInThemeDay:
            try container.encode(Kind.builtInThemeDay, forKey: .type)
        case .builtInThemeNight:
            try container.encode(Kind.builtInThemeNight, forKey: .type)
        case .builtInThemeTinted:
            try container.encode(Kind.builtInThemeTinted, forKey: .type)
        case .builtInThemeArctic:
            try container.encode(Kind.builtInThemeArctic, forKey: .type)
        }
    }
}


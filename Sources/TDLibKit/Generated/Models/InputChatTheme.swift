//
//  InputChatTheme.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes a chat theme to set
public indirect enum InputChatTheme: Codable, Equatable, Hashable {

    /// A theme based on an emoji
    case inputChatThemeEmoji(InputChatThemeEmoji)

    /// A theme based on an upgraded gift
    case inputChatThemeGift(InputChatThemeGift)


    private enum Kind: String, Codable {
        case inputChatThemeEmoji
        case inputChatThemeGift
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputChatThemeEmoji:
            let value = try InputChatThemeEmoji(from: decoder)
            self = .inputChatThemeEmoji(value)
        case .inputChatThemeGift:
            let value = try InputChatThemeGift(from: decoder)
            self = .inputChatThemeGift(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputChatThemeEmoji(let value):
            try container.encode(Kind.inputChatThemeEmoji, forKey: .type)
            try value.encode(to: encoder)
        case .inputChatThemeGift(let value):
            try container.encode(Kind.inputChatThemeGift, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A theme based on an emoji
public struct InputChatThemeEmoji: Codable, Equatable, Hashable {

    /// Name of the theme
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

/// A theme based on an upgraded gift
public struct InputChatThemeGift: Codable, Equatable, Hashable {

    /// Name of the upgraded gift. A gift can be used only in one chat in a time. When the same gift is used in another chat, theme in the previous chat is reset to default
    public let name: String


    public init(name: String) {
        self.name = name
    }
}


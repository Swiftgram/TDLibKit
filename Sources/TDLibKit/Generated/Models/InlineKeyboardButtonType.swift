//
//  InlineKeyboardButtonType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Describes the type of an inline keyboard button
public enum InlineKeyboardButtonType: Codable {

    /// A button that opens a specified URL
    case inlineKeyboardButtonTypeUrl(InlineKeyboardButtonTypeUrl)

    /// A button that opens a specified URL and automatically authorize the current user if allowed to do so
    case inlineKeyboardButtonTypeLoginUrl(InlineKeyboardButtonTypeLoginUrl)

    /// A button that sends a callback query to a bot
    case inlineKeyboardButtonTypeCallback(InlineKeyboardButtonTypeCallback)

    /// A button that asks for password of the current user and then sends a callback query to a bot
    case inlineKeyboardButtonTypeCallbackWithPassword(InlineKeyboardButtonTypeCallbackWithPassword)

    /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame
    case inlineKeyboardButtonTypeCallbackGame

    /// A button that forces an inline query to the bot to be inserted in the input field
    case inlineKeyboardButtonTypeSwitchInline(InlineKeyboardButtonTypeSwitchInline)

    /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
    case inlineKeyboardButtonTypeBuy


    private enum Kind: String, Codable {
        case inlineKeyboardButtonTypeUrl
        case inlineKeyboardButtonTypeLoginUrl
        case inlineKeyboardButtonTypeCallback
        case inlineKeyboardButtonTypeCallbackWithPassword
        case inlineKeyboardButtonTypeCallbackGame
        case inlineKeyboardButtonTypeSwitchInline
        case inlineKeyboardButtonTypeBuy
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inlineKeyboardButtonTypeUrl:
            let value = try InlineKeyboardButtonTypeUrl(from: decoder)
            self = .inlineKeyboardButtonTypeUrl(value)
        case .inlineKeyboardButtonTypeLoginUrl:
            let value = try InlineKeyboardButtonTypeLoginUrl(from: decoder)
            self = .inlineKeyboardButtonTypeLoginUrl(value)
        case .inlineKeyboardButtonTypeCallback:
            let value = try InlineKeyboardButtonTypeCallback(from: decoder)
            self = .inlineKeyboardButtonTypeCallback(value)
        case .inlineKeyboardButtonTypeCallbackWithPassword:
            let value = try InlineKeyboardButtonTypeCallbackWithPassword(from: decoder)
            self = .inlineKeyboardButtonTypeCallbackWithPassword(value)
        case .inlineKeyboardButtonTypeCallbackGame:
            self = .inlineKeyboardButtonTypeCallbackGame
        case .inlineKeyboardButtonTypeSwitchInline:
            let value = try InlineKeyboardButtonTypeSwitchInline(from: decoder)
            self = .inlineKeyboardButtonTypeSwitchInline(value)
        case .inlineKeyboardButtonTypeBuy:
            self = .inlineKeyboardButtonTypeBuy
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inlineKeyboardButtonTypeUrl(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeUrl, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboardButtonTypeLoginUrl(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeLoginUrl, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboardButtonTypeCallback(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeCallback, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboardButtonTypeCallbackWithPassword(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeCallbackWithPassword, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboardButtonTypeCallbackGame:
            try container.encode(Kind.inlineKeyboardButtonTypeCallbackGame, forKey: .type)
        case .inlineKeyboardButtonTypeSwitchInline(let value):
            try container.encode(Kind.inlineKeyboardButtonTypeSwitchInline, forKey: .type)
            try value.encode(to: encoder)
        case .inlineKeyboardButtonTypeBuy:
            try container.encode(Kind.inlineKeyboardButtonTypeBuy, forKey: .type)
        }
    }
}

/// A button that opens a specified URL
public struct InlineKeyboardButtonTypeUrl: Codable {

    /// HTTP or tg:// URL to open
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// A button that opens a specified URL and automatically authorize the current user if allowed to do so
public struct InlineKeyboardButtonTypeLoginUrl: Codable {

    /// If non-empty, new text of the button in forwarded messages
    public let forwardText: String

    /// Unique button identifier
    public let id: Int

    /// An HTTP URL to open
    public let url: String


    public init(
        forwardText: String,
        id: Int,
        url: String
    ) {
        self.forwardText = forwardText
        self.id = id
        self.url = url
    }
}

/// A button that sends a callback query to a bot
public struct InlineKeyboardButtonTypeCallback: Codable {

    /// Data to be sent to the bot via a callback query
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

/// A button that asks for password of the current user and then sends a callback query to a bot
public struct InlineKeyboardButtonTypeCallbackWithPassword: Codable {

    /// Data to be sent to the bot via a callback query
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

/// A button that forces an inline query to the bot to be inserted in the input field
public struct InlineKeyboardButtonTypeSwitchInline: Codable {

    /// True, if the inline query should be sent from the current chat
    public let inCurrentChat: Bool

    /// Inline query to be sent to the bot
    public let query: String


    public init(
        inCurrentChat: Bool,
        query: String
    ) {
        self.inCurrentChat = inCurrentChat
        self.query = query
    }
}


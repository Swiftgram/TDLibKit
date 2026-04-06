//
//  KeyboardButtonSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Describes source of a keyboard button
public indirect enum KeyboardButtonSource: Codable, Equatable, Hashable {

    /// The button is from a bot's message
    case keyboardButtonSourceMessage(KeyboardButtonSourceMessage)

    /// The button is a prepared keyboard button from a Mini App received via getPreparedKeyboardButton
    case keyboardButtonSourceWebApp(KeyboardButtonSourceWebApp)


    private enum Kind: String, Codable {
        case keyboardButtonSourceMessage
        case keyboardButtonSourceWebApp
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .keyboardButtonSourceMessage:
            let value = try KeyboardButtonSourceMessage(from: decoder)
            self = .keyboardButtonSourceMessage(value)
        case .keyboardButtonSourceWebApp:
            let value = try KeyboardButtonSourceWebApp(from: decoder)
            self = .keyboardButtonSourceWebApp(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .keyboardButtonSourceMessage(let value):
            try container.encode(Kind.keyboardButtonSourceMessage, forKey: .type)
            try value.encode(to: encoder)
        case .keyboardButtonSourceWebApp(let value):
            try container.encode(Kind.keyboardButtonSourceWebApp, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The button is from a bot's message
public struct KeyboardButtonSourceMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64

    /// Identifier of the message with the button
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// The button is a prepared keyboard button from a Mini App received via getPreparedKeyboardButton
public struct KeyboardButtonSourceWebApp: Codable, Equatable, Hashable {

    /// Identifier of the bot that created the button
    public let botUserId: Int64

    /// Identifier of the prepared button
    public let preparedButtonId: String


    public init(
        botUserId: Int64,
        preparedButtonId: String
    ) {
        self.botUserId = botUserId
        self.preparedButtonId = preparedButtonId
    }
}


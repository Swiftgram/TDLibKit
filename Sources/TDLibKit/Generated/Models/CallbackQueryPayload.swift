//
//  CallbackQueryPayload.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a payload of a callback query
public indirect enum CallbackQueryPayload: Codable, Equatable, Hashable {

    /// The payload for a general callback button
    case callbackQueryPayloadData(CallbackQueryPayloadData)

    /// The payload for a callback button requiring password
    case callbackQueryPayloadDataWithPassword(CallbackQueryPayloadDataWithPassword)

    /// The payload for a game callback button
    case callbackQueryPayloadGame(CallbackQueryPayloadGame)


    private enum Kind: String, Codable {
        case callbackQueryPayloadData
        case callbackQueryPayloadDataWithPassword
        case callbackQueryPayloadGame
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callbackQueryPayloadData:
            let value = try CallbackQueryPayloadData(from: decoder)
            self = .callbackQueryPayloadData(value)
        case .callbackQueryPayloadDataWithPassword:
            let value = try CallbackQueryPayloadDataWithPassword(from: decoder)
            self = .callbackQueryPayloadDataWithPassword(value)
        case .callbackQueryPayloadGame:
            let value = try CallbackQueryPayloadGame(from: decoder)
            self = .callbackQueryPayloadGame(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callbackQueryPayloadData(let value):
            try container.encode(Kind.callbackQueryPayloadData, forKey: .type)
            try value.encode(to: encoder)
        case .callbackQueryPayloadDataWithPassword(let value):
            try container.encode(Kind.callbackQueryPayloadDataWithPassword, forKey: .type)
            try value.encode(to: encoder)
        case .callbackQueryPayloadGame(let value):
            try container.encode(Kind.callbackQueryPayloadGame, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The payload for a general callback button
public struct CallbackQueryPayloadData: Codable, Equatable, Hashable {

    /// Data that was attached to the callback button
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

/// The payload for a callback button requiring password
public struct CallbackQueryPayloadDataWithPassword: Codable, Equatable, Hashable {

    /// Data that was attached to the callback button
    public let data: Data

    /// The 2-step verification password for the current user
    public let password: String


    public init(
        data: Data,
        password: String
    ) {
        self.data = data
        self.password = password
    }
}

/// The payload for a game callback button
public struct CallbackQueryPayloadGame: Codable, Equatable, Hashable {

    /// A short name of the game that was attached to the callback button
    public let gameShortName: String


    public init(gameShortName: String) {
        self.gameShortName = gameShortName
    }
}


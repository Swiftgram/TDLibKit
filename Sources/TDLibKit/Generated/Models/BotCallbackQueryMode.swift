//
//  BotCallbackQueryMode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes how callback queries are received by a bot
public indirect enum BotCallbackQueryMode: Codable, Equatable, Hashable {

    /// Callback queries are always received in updateNewCallbackQuery; the message with the button can be inaccessible to the bot
    case botCallbackQueryModeDefault

    /// Callback queries are received in updateNewInlineCallbackQuery instead of updateNewCallbackQuery if the message with the button is inaccessible to the bot. Rarely, the message can still be inaccessible to the bot in updateNewCallbackQuery
    case botCallbackQueryModeAuto

    /// Callback queries are always received in updateNewInlineCallbackQuery instead of updateNewCallbackQuery
    case botCallbackQueryModeInline


    private enum Kind: String, Codable {
        case botCallbackQueryModeDefault
        case botCallbackQueryModeAuto
        case botCallbackQueryModeInline
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .botCallbackQueryModeDefault:
            self = .botCallbackQueryModeDefault
        case .botCallbackQueryModeAuto:
            self = .botCallbackQueryModeAuto
        case .botCallbackQueryModeInline:
            self = .botCallbackQueryModeInline
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .botCallbackQueryModeDefault:
            try container.encode(Kind.botCallbackQueryModeDefault, forKey: .type)
        case .botCallbackQueryModeAuto:
            try container.encode(Kind.botCallbackQueryModeAuto, forKey: .type)
        case .botCallbackQueryModeInline:
            try container.encode(Kind.botCallbackQueryModeInline, forKey: .type)
        }
    }
}


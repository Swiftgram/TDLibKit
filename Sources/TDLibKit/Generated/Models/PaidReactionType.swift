//
//  PaidReactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes type of paid message reaction
public indirect enum PaidReactionType: Codable, Equatable, Hashable {

    /// A paid reaction on behalf of the current user
    case paidReactionTypeRegular

    /// An anonymous paid reaction
    case paidReactionTypeAnonymous

    /// A paid reaction on behalf of an owned chat
    case paidReactionTypeChat(PaidReactionTypeChat)


    private enum Kind: String, Codable {
        case paidReactionTypeRegular
        case paidReactionTypeAnonymous
        case paidReactionTypeChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .paidReactionTypeRegular:
            self = .paidReactionTypeRegular
        case .paidReactionTypeAnonymous:
            self = .paidReactionTypeAnonymous
        case .paidReactionTypeChat:
            let value = try PaidReactionTypeChat(from: decoder)
            self = .paidReactionTypeChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .paidReactionTypeRegular:
            try container.encode(Kind.paidReactionTypeRegular, forKey: .type)
        case .paidReactionTypeAnonymous:
            try container.encode(Kind.paidReactionTypeAnonymous, forKey: .type)
        case .paidReactionTypeChat(let value):
            try container.encode(Kind.paidReactionTypeChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A paid reaction on behalf of an owned chat
public struct PaidReactionTypeChat: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}


//
//  ChatJoinResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Describes result of join of a chat by the current user
public indirect enum ChatJoinResult: Codable, Equatable, Hashable {

    /// The chat was joined successfully
    case chatJoinResultSuccess(ChatJoinResultSuccess)

    /// The join request was sent and have to be approved by administrators of the chat
    case chatJoinResultRequestSent

    /// An approval from a guard bot through a Web App is required to join the chat
    case chatJoinResultGuardBotApprovalRequired(ChatJoinResultGuardBotApprovalRequired)

    /// The join was declined by the guard bot
    case chatJoinResultDeclined


    private enum Kind: String, Codable {
        case chatJoinResultSuccess
        case chatJoinResultRequestSent
        case chatJoinResultGuardBotApprovalRequired
        case chatJoinResultDeclined
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatJoinResultSuccess:
            let value = try ChatJoinResultSuccess(from: decoder)
            self = .chatJoinResultSuccess(value)
        case .chatJoinResultRequestSent:
            self = .chatJoinResultRequestSent
        case .chatJoinResultGuardBotApprovalRequired:
            let value = try ChatJoinResultGuardBotApprovalRequired(from: decoder)
            self = .chatJoinResultGuardBotApprovalRequired(value)
        case .chatJoinResultDeclined:
            self = .chatJoinResultDeclined
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatJoinResultSuccess(let value):
            try container.encode(Kind.chatJoinResultSuccess, forKey: .type)
            try value.encode(to: encoder)
        case .chatJoinResultRequestSent:
            try container.encode(Kind.chatJoinResultRequestSent, forKey: .type)
        case .chatJoinResultGuardBotApprovalRequired(let value):
            try container.encode(Kind.chatJoinResultGuardBotApprovalRequired, forKey: .type)
            try value.encode(to: encoder)
        case .chatJoinResultDeclined:
            try container.encode(Kind.chatJoinResultDeclined, forKey: .type)
        }
    }
}

/// The chat was joined successfully
public struct ChatJoinResultSuccess: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// An approval from a guard bot through a Web App is required to join the chat
public struct ChatJoinResultGuardBotApprovalRequired: Codable, Equatable, Hashable {

    /// Identifier of the guard bot
    public let botUserId: Int64

    /// Unique identifier of the join request, which will be used in updateChatJoinResult
    public let queryId: Int64

    /// The URL of the Web App to open
    public let url: WebAppUrl


    public init(
        botUserId: Int64,
        queryId: Int64,
        url: WebAppUrl
    ) {
        self.botUserId = botUserId
        self.queryId = queryId
        self.url = url
    }
}


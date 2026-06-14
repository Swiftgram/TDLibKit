//
//  ChatJoinRequestResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Describes result of a chat join request
public indirect enum ChatJoinRequestResult: Codable, Equatable, Hashable {

    /// The request was approved
    case chatJoinRequestResultApproved

    /// The request was declined
    case chatJoinRequestResultDeclined

    /// The request was postponed without a decision
    case chatJoinRequestResultQueued


    private enum Kind: String, Codable {
        case chatJoinRequestResultApproved
        case chatJoinRequestResultDeclined
        case chatJoinRequestResultQueued
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatJoinRequestResultApproved:
            self = .chatJoinRequestResultApproved
        case .chatJoinRequestResultDeclined:
            self = .chatJoinRequestResultDeclined
        case .chatJoinRequestResultQueued:
            self = .chatJoinRequestResultQueued
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatJoinRequestResultApproved:
            try container.encode(Kind.chatJoinRequestResultApproved, forKey: .type)
        case .chatJoinRequestResultDeclined:
            try container.encode(Kind.chatJoinRequestResultDeclined, forKey: .type)
        case .chatJoinRequestResultQueued:
            try container.encode(Kind.chatJoinRequestResultQueued, forKey: .type)
        }
    }
}


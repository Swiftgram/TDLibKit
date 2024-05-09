//
//  BlockList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
//

import Foundation


/// Describes a type of block list
public indirect enum BlockList: Codable, Equatable, Hashable {

    /// The main block list that disallows writing messages to the current user, receiving their status and photo, viewing of stories, and some other actions
    case blockListMain

    /// The block list that disallows viewing of stories of the current user
    case blockListStories


    private enum Kind: String, Codable {
        case blockListMain
        case blockListStories
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .blockListMain:
            self = .blockListMain
        case .blockListStories:
            self = .blockListStories
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .blockListMain:
            try container.encode(Kind.blockListMain, forKey: .type)
        case .blockListStories:
            try container.encode(Kind.blockListStories, forKey: .type)
        }
    }
}


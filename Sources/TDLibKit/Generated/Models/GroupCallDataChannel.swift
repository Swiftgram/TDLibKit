//
//  GroupCallDataChannel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Describes data channel for a group call
public indirect enum GroupCallDataChannel: Codable, Equatable, Hashable {

    /// The main data channel for audio and video data
    case groupCallDataChannelMain

    /// The data channel for screen sharing
    case groupCallDataChannelScreenSharing


    private enum Kind: String, Codable {
        case groupCallDataChannelMain
        case groupCallDataChannelScreenSharing
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .groupCallDataChannelMain:
            self = .groupCallDataChannelMain
        case .groupCallDataChannelScreenSharing:
            self = .groupCallDataChannelScreenSharing
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .groupCallDataChannelMain:
            try container.encode(Kind.groupCallDataChannelMain, forKey: .type)
        case .groupCallDataChannelScreenSharing:
            try container.encode(Kind.groupCallDataChannelScreenSharing, forKey: .type)
        }
    }
}


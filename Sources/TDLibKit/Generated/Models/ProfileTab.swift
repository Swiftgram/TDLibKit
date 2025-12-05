//
//  ProfileTab.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes a tab shown in a user or a chat profile
public indirect enum ProfileTab: Codable, Equatable, Hashable {

    /// A tab with stories posted by the user or the channel chat and saved to profile
    case profileTabPosts

    /// A tab with gifts received by the user or the channel chat
    case profileTabGifts

    /// A tab with photos and videos posted by the channel
    case profileTabMedia

    /// A tab with documents posted by the channel
    case profileTabFiles

    /// A tab with messages posted by the channel and containing links
    case profileTabLinks

    /// A tab with audio messages posted by the channel
    case profileTabMusic

    /// A tab with voice notes posted by the channel
    case profileTabVoice

    /// A tab with animations posted by the channel
    case profileTabGifs


    private enum Kind: String, Codable {
        case profileTabPosts
        case profileTabGifts
        case profileTabMedia
        case profileTabFiles
        case profileTabLinks
        case profileTabMusic
        case profileTabVoice
        case profileTabGifs
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .profileTabPosts:
            self = .profileTabPosts
        case .profileTabGifts:
            self = .profileTabGifts
        case .profileTabMedia:
            self = .profileTabMedia
        case .profileTabFiles:
            self = .profileTabFiles
        case .profileTabLinks:
            self = .profileTabLinks
        case .profileTabMusic:
            self = .profileTabMusic
        case .profileTabVoice:
            self = .profileTabVoice
        case .profileTabGifs:
            self = .profileTabGifs
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .profileTabPosts:
            try container.encode(Kind.profileTabPosts, forKey: .type)
        case .profileTabGifts:
            try container.encode(Kind.profileTabGifts, forKey: .type)
        case .profileTabMedia:
            try container.encode(Kind.profileTabMedia, forKey: .type)
        case .profileTabFiles:
            try container.encode(Kind.profileTabFiles, forKey: .type)
        case .profileTabLinks:
            try container.encode(Kind.profileTabLinks, forKey: .type)
        case .profileTabMusic:
            try container.encode(Kind.profileTabMusic, forKey: .type)
        case .profileTabVoice:
            try container.encode(Kind.profileTabVoice, forKey: .type)
        case .profileTabGifs:
            try container.encode(Kind.profileTabGifs, forKey: .type)
        }
    }
}


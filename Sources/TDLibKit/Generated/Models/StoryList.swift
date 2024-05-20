//
//  StoryList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a list of stories
public indirect enum StoryList: Codable, Equatable, Hashable {

    /// The list of stories, shown in the main chat list and folder chat lists
    case storyListMain

    /// The list of stories, shown in the Arvhive chat list
    case storyListArchive


    private enum Kind: String, Codable {
        case storyListMain
        case storyListArchive
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storyListMain:
            self = .storyListMain
        case .storyListArchive:
            self = .storyListArchive
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storyListMain:
            try container.encode(Kind.storyListMain, forKey: .type)
        case .storyListArchive:
            try container.encode(Kind.storyListArchive, forKey: .type)
        }
    }
}


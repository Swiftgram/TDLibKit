//
//  SearchMessagesFilter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a filter for message search results
public indirect enum SearchMessagesFilter: Codable, Equatable, Hashable {

    /// Returns all found messages, no filter is applied
    case searchMessagesFilterEmpty

    /// Returns only animation messages
    case searchMessagesFilterAnimation

    /// Returns only audio messages
    case searchMessagesFilterAudio

    /// Returns only document messages
    case searchMessagesFilterDocument

    /// Returns only photo messages
    case searchMessagesFilterPhoto

    /// Returns only video messages
    case searchMessagesFilterVideo

    /// Returns only voice note messages
    case searchMessagesFilterVoiceNote

    /// Returns only photo and video messages
    case searchMessagesFilterPhotoAndVideo

    /// Returns only messages containing URLs
    case searchMessagesFilterUrl

    /// Returns only messages containing chat photos
    case searchMessagesFilterChatPhoto

    /// Returns only video note messages
    case searchMessagesFilterVideoNote

    /// Returns only voice and video note messages
    case searchMessagesFilterVoiceAndVideoNote

    /// Returns only messages with mentions of the current user, or messages that are replies to their messages
    case searchMessagesFilterMention

    /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
    case searchMessagesFilterUnreadMention

    /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user
    case searchMessagesFilterUnreadReaction

    /// Returns only failed to send messages. This filter can be used only if the message database is used
    case searchMessagesFilterFailedToSend

    /// Returns only pinned messages
    case searchMessagesFilterPinned


    private enum Kind: String, Codable {
        case searchMessagesFilterEmpty
        case searchMessagesFilterAnimation
        case searchMessagesFilterAudio
        case searchMessagesFilterDocument
        case searchMessagesFilterPhoto
        case searchMessagesFilterVideo
        case searchMessagesFilterVoiceNote
        case searchMessagesFilterPhotoAndVideo
        case searchMessagesFilterUrl
        case searchMessagesFilterChatPhoto
        case searchMessagesFilterVideoNote
        case searchMessagesFilterVoiceAndVideoNote
        case searchMessagesFilterMention
        case searchMessagesFilterUnreadMention
        case searchMessagesFilterUnreadReaction
        case searchMessagesFilterFailedToSend
        case searchMessagesFilterPinned
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .searchMessagesFilterEmpty:
            self = .searchMessagesFilterEmpty
        case .searchMessagesFilterAnimation:
            self = .searchMessagesFilterAnimation
        case .searchMessagesFilterAudio:
            self = .searchMessagesFilterAudio
        case .searchMessagesFilterDocument:
            self = .searchMessagesFilterDocument
        case .searchMessagesFilterPhoto:
            self = .searchMessagesFilterPhoto
        case .searchMessagesFilterVideo:
            self = .searchMessagesFilterVideo
        case .searchMessagesFilterVoiceNote:
            self = .searchMessagesFilterVoiceNote
        case .searchMessagesFilterPhotoAndVideo:
            self = .searchMessagesFilterPhotoAndVideo
        case .searchMessagesFilterUrl:
            self = .searchMessagesFilterUrl
        case .searchMessagesFilterChatPhoto:
            self = .searchMessagesFilterChatPhoto
        case .searchMessagesFilterVideoNote:
            self = .searchMessagesFilterVideoNote
        case .searchMessagesFilterVoiceAndVideoNote:
            self = .searchMessagesFilterVoiceAndVideoNote
        case .searchMessagesFilterMention:
            self = .searchMessagesFilterMention
        case .searchMessagesFilterUnreadMention:
            self = .searchMessagesFilterUnreadMention
        case .searchMessagesFilterUnreadReaction:
            self = .searchMessagesFilterUnreadReaction
        case .searchMessagesFilterFailedToSend:
            self = .searchMessagesFilterFailedToSend
        case .searchMessagesFilterPinned:
            self = .searchMessagesFilterPinned
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .searchMessagesFilterEmpty:
            try container.encode(Kind.searchMessagesFilterEmpty, forKey: .type)
        case .searchMessagesFilterAnimation:
            try container.encode(Kind.searchMessagesFilterAnimation, forKey: .type)
        case .searchMessagesFilterAudio:
            try container.encode(Kind.searchMessagesFilterAudio, forKey: .type)
        case .searchMessagesFilterDocument:
            try container.encode(Kind.searchMessagesFilterDocument, forKey: .type)
        case .searchMessagesFilterPhoto:
            try container.encode(Kind.searchMessagesFilterPhoto, forKey: .type)
        case .searchMessagesFilterVideo:
            try container.encode(Kind.searchMessagesFilterVideo, forKey: .type)
        case .searchMessagesFilterVoiceNote:
            try container.encode(Kind.searchMessagesFilterVoiceNote, forKey: .type)
        case .searchMessagesFilterPhotoAndVideo:
            try container.encode(Kind.searchMessagesFilterPhotoAndVideo, forKey: .type)
        case .searchMessagesFilterUrl:
            try container.encode(Kind.searchMessagesFilterUrl, forKey: .type)
        case .searchMessagesFilterChatPhoto:
            try container.encode(Kind.searchMessagesFilterChatPhoto, forKey: .type)
        case .searchMessagesFilterVideoNote:
            try container.encode(Kind.searchMessagesFilterVideoNote, forKey: .type)
        case .searchMessagesFilterVoiceAndVideoNote:
            try container.encode(Kind.searchMessagesFilterVoiceAndVideoNote, forKey: .type)
        case .searchMessagesFilterMention:
            try container.encode(Kind.searchMessagesFilterMention, forKey: .type)
        case .searchMessagesFilterUnreadMention:
            try container.encode(Kind.searchMessagesFilterUnreadMention, forKey: .type)
        case .searchMessagesFilterUnreadReaction:
            try container.encode(Kind.searchMessagesFilterUnreadReaction, forKey: .type)
        case .searchMessagesFilterFailedToSend:
            try container.encode(Kind.searchMessagesFilterFailedToSend, forKey: .type)
        case .searchMessagesFilterPinned:
            try container.encode(Kind.searchMessagesFilterPinned, forKey: .type)
        }
    }
}


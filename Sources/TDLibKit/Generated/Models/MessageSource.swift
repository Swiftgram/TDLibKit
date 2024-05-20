//
//  MessageSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes source of a message
public indirect enum MessageSource: Codable, Equatable, Hashable {

    /// The message is from a chat history
    case messageSourceChatHistory

    /// The message is from a message thread history
    case messageSourceMessageThreadHistory

    /// The message is from a forum topic history
    case messageSourceForumTopicHistory

    /// The message is from chat, message thread or forum topic history preview
    case messageSourceHistoryPreview

    /// The message is from a chat list or a forum topic list
    case messageSourceChatList

    /// The message is from search results, including file downloads, local file list, outgoing document messages, calendar
    case messageSourceSearch

    /// The message is from a chat event log
    case messageSourceChatEventLog

    /// The message is from a notification
    case messageSourceNotification

    /// The message was screenshotted; the source must be used only if the message content was visible during the screenshot
    case messageSourceScreenshot

    /// The message is from some other source
    case messageSourceOther


    private enum Kind: String, Codable {
        case messageSourceChatHistory
        case messageSourceMessageThreadHistory
        case messageSourceForumTopicHistory
        case messageSourceHistoryPreview
        case messageSourceChatList
        case messageSourceSearch
        case messageSourceChatEventLog
        case messageSourceNotification
        case messageSourceScreenshot
        case messageSourceOther
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageSourceChatHistory:
            self = .messageSourceChatHistory
        case .messageSourceMessageThreadHistory:
            self = .messageSourceMessageThreadHistory
        case .messageSourceForumTopicHistory:
            self = .messageSourceForumTopicHistory
        case .messageSourceHistoryPreview:
            self = .messageSourceHistoryPreview
        case .messageSourceChatList:
            self = .messageSourceChatList
        case .messageSourceSearch:
            self = .messageSourceSearch
        case .messageSourceChatEventLog:
            self = .messageSourceChatEventLog
        case .messageSourceNotification:
            self = .messageSourceNotification
        case .messageSourceScreenshot:
            self = .messageSourceScreenshot
        case .messageSourceOther:
            self = .messageSourceOther
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageSourceChatHistory:
            try container.encode(Kind.messageSourceChatHistory, forKey: .type)
        case .messageSourceMessageThreadHistory:
            try container.encode(Kind.messageSourceMessageThreadHistory, forKey: .type)
        case .messageSourceForumTopicHistory:
            try container.encode(Kind.messageSourceForumTopicHistory, forKey: .type)
        case .messageSourceHistoryPreview:
            try container.encode(Kind.messageSourceHistoryPreview, forKey: .type)
        case .messageSourceChatList:
            try container.encode(Kind.messageSourceChatList, forKey: .type)
        case .messageSourceSearch:
            try container.encode(Kind.messageSourceSearch, forKey: .type)
        case .messageSourceChatEventLog:
            try container.encode(Kind.messageSourceChatEventLog, forKey: .type)
        case .messageSourceNotification:
            try container.encode(Kind.messageSourceNotification, forKey: .type)
        case .messageSourceScreenshot:
            try container.encode(Kind.messageSourceScreenshot, forKey: .type)
        case .messageSourceOther:
            try container.encode(Kind.messageSourceOther, forKey: .type)
        }
    }
}


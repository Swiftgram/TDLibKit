//
//  ChatStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains a detailed statistics about a chat
public indirect enum ChatStatistics: Codable, Equatable, Hashable {

    /// A detailed statistics about a supergroup chat
    case chatStatisticsSupergroup(ChatStatisticsSupergroup)

    /// A detailed statistics about a channel chat
    case chatStatisticsChannel(ChatStatisticsChannel)


    private enum Kind: String, Codable {
        case chatStatisticsSupergroup
        case chatStatisticsChannel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatStatisticsSupergroup:
            let value = try ChatStatisticsSupergroup(from: decoder)
            self = .chatStatisticsSupergroup(value)
        case .chatStatisticsChannel:
            let value = try ChatStatisticsChannel(from: decoder)
            self = .chatStatisticsChannel(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatStatisticsSupergroup(let value):
            try container.encode(Kind.chatStatisticsSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .chatStatisticsChannel(let value):
            try container.encode(Kind.chatStatisticsChannel, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A detailed statistics about a supergroup chat
public struct ChatStatisticsSupergroup: Codable, Equatable, Hashable {

    /// A graph containing number of different actions in the chat
    public let actionGraph: StatisticalGraph

    /// A graph containing distribution of message views per hour
    public let dayGraph: StatisticalGraph

    /// A graph containing number of new member joins per source
    public let joinBySourceGraph: StatisticalGraph

    /// A graph containing number of members joined and left the chat
    public let joinGraph: StatisticalGraph

    /// A graph containing distribution of active users per language
    public let languageGraph: StatisticalGraph

    /// Number of members in the chat
    public let memberCount: StatisticalValue

    /// A graph containing number of members in the chat
    public let memberCountGraph: StatisticalGraph

    /// A graph containing distribution of sent messages by content type
    public let messageContentGraph: StatisticalGraph

    /// Number of messages sent to the chat
    public let messageCount: StatisticalValue

    /// A period to which the statistics applies
    public let period: DateRange

    /// Number of users who sent messages to the chat
    public let senderCount: StatisticalValue

    /// List of most active administrators in the last week
    public let topAdministrators: [ChatStatisticsAdministratorActionsInfo]

    /// List of most active inviters of new members in the last week
    public let topInviters: [ChatStatisticsInviterInfo]

    /// List of users sent most messages in the last week
    public let topSenders: [ChatStatisticsMessageSenderInfo]

    /// Number of users who viewed messages in the chat
    public let viewerCount: StatisticalValue

    /// A graph containing distribution of message views per day of week
    public let weekGraph: StatisticalGraph


    public init(
        actionGraph: StatisticalGraph,
        dayGraph: StatisticalGraph,
        joinBySourceGraph: StatisticalGraph,
        joinGraph: StatisticalGraph,
        languageGraph: StatisticalGraph,
        memberCount: StatisticalValue,
        memberCountGraph: StatisticalGraph,
        messageContentGraph: StatisticalGraph,
        messageCount: StatisticalValue,
        period: DateRange,
        senderCount: StatisticalValue,
        topAdministrators: [ChatStatisticsAdministratorActionsInfo],
        topInviters: [ChatStatisticsInviterInfo],
        topSenders: [ChatStatisticsMessageSenderInfo],
        viewerCount: StatisticalValue,
        weekGraph: StatisticalGraph
    ) {
        self.actionGraph = actionGraph
        self.dayGraph = dayGraph
        self.joinBySourceGraph = joinBySourceGraph
        self.joinGraph = joinGraph
        self.languageGraph = languageGraph
        self.memberCount = memberCount
        self.memberCountGraph = memberCountGraph
        self.messageContentGraph = messageContentGraph
        self.messageCount = messageCount
        self.period = period
        self.senderCount = senderCount
        self.topAdministrators = topAdministrators
        self.topInviters = topInviters
        self.topSenders = topSenders
        self.viewerCount = viewerCount
        self.weekGraph = weekGraph
    }
}

/// A detailed statistics about a channel chat
public struct ChatStatisticsChannel: Codable, Equatable, Hashable {

    /// A percentage of users with enabled notifications for the chat; 0-100
    public let enabledNotificationsPercentage: Double

    /// A graph containing number of views of associated with the chat instant views
    public let instantViewInteractionGraph: StatisticalGraph

    /// A graph containing number of new member joins per source
    public let joinBySourceGraph: StatisticalGraph

    /// A graph containing number of members joined and left the chat
    public let joinGraph: StatisticalGraph

    /// A graph containing number of users viewed chat messages per language
    public let languageGraph: StatisticalGraph

    /// Mean number of times reactions were added to the recently sent messages
    public let meanMessageReactionCount: StatisticalValue

    /// Mean number of times the recently sent messages were shared
    public let meanMessageShareCount: StatisticalValue

    /// Mean number of times the recently sent messages were viewed
    public let meanMessageViewCount: StatisticalValue

    /// Mean number of times reactions were added to the recently sent stories
    public let meanStoryReactionCount: StatisticalValue

    /// Mean number of times the recently sent stories were shared
    public let meanStoryShareCount: StatisticalValue

    /// Mean number of times the recently sent stories were viewed
    public let meanStoryViewCount: StatisticalValue

    /// Number of members in the chat
    public let memberCount: StatisticalValue

    /// A graph containing number of members in the chat
    public let memberCountGraph: StatisticalGraph

    /// A graph containing number of chat message views and shares
    public let messageInteractionGraph: StatisticalGraph

    /// A graph containing number of reactions on messages
    public let messageReactionGraph: StatisticalGraph

    /// A graph containing number of members muted and unmuted the chat
    public let muteGraph: StatisticalGraph

    /// A period to which the statistics applies
    public let period: DateRange

    /// Detailed statistics about number of views and shares of recently sent messages and stories
    public let recentInteractions: [ChatStatisticsInteractionInfo]

    /// A graph containing number of story views and shares
    public let storyInteractionGraph: StatisticalGraph

    /// A graph containing number of reactions on stories
    public let storyReactionGraph: StatisticalGraph

    /// A graph containing number of message views in a given hour in the last two weeks
    public let viewCountByHourGraph: StatisticalGraph

    /// A graph containing number of message views per source
    public let viewCountBySourceGraph: StatisticalGraph


    public init(
        enabledNotificationsPercentage: Double,
        instantViewInteractionGraph: StatisticalGraph,
        joinBySourceGraph: StatisticalGraph,
        joinGraph: StatisticalGraph,
        languageGraph: StatisticalGraph,
        meanMessageReactionCount: StatisticalValue,
        meanMessageShareCount: StatisticalValue,
        meanMessageViewCount: StatisticalValue,
        meanStoryReactionCount: StatisticalValue,
        meanStoryShareCount: StatisticalValue,
        meanStoryViewCount: StatisticalValue,
        memberCount: StatisticalValue,
        memberCountGraph: StatisticalGraph,
        messageInteractionGraph: StatisticalGraph,
        messageReactionGraph: StatisticalGraph,
        muteGraph: StatisticalGraph,
        period: DateRange,
        recentInteractions: [ChatStatisticsInteractionInfo],
        storyInteractionGraph: StatisticalGraph,
        storyReactionGraph: StatisticalGraph,
        viewCountByHourGraph: StatisticalGraph,
        viewCountBySourceGraph: StatisticalGraph
    ) {
        self.enabledNotificationsPercentage = enabledNotificationsPercentage
        self.instantViewInteractionGraph = instantViewInteractionGraph
        self.joinBySourceGraph = joinBySourceGraph
        self.joinGraph = joinGraph
        self.languageGraph = languageGraph
        self.meanMessageReactionCount = meanMessageReactionCount
        self.meanMessageShareCount = meanMessageShareCount
        self.meanMessageViewCount = meanMessageViewCount
        self.meanStoryReactionCount = meanStoryReactionCount
        self.meanStoryShareCount = meanStoryShareCount
        self.meanStoryViewCount = meanStoryViewCount
        self.memberCount = memberCount
        self.memberCountGraph = memberCountGraph
        self.messageInteractionGraph = messageInteractionGraph
        self.messageReactionGraph = messageReactionGraph
        self.muteGraph = muteGraph
        self.period = period
        self.recentInteractions = recentInteractions
        self.storyInteractionGraph = storyInteractionGraph
        self.storyReactionGraph = storyReactionGraph
        self.viewCountByHourGraph = viewCountByHourGraph
        self.viewCountBySourceGraph = viewCountBySourceGraph
    }
}


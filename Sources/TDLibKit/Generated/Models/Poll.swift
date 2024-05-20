//
//  Poll.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a poll
public struct Poll: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the poll will automatically be closed
    public let closeDate: Int

    /// Unique poll identifier
    public let id: TdInt64

    /// True, if the poll is anonymous
    public let isAnonymous: Bool

    /// True, if the poll is closed
    public let isClosed: Bool

    /// Amount of time the poll will be active after creation, in seconds
    public let openPeriod: Int

    /// List of poll answer options
    public let options: [PollOption]

    /// Poll question; 1-300 characters. Only custom emoji entities are allowed
    public let question: FormattedText

    /// Identifiers of recent voters, if the poll is non-anonymous
    public let recentVoterIds: [MessageSender]

    /// Total number of voters, participating in the poll
    public let totalVoterCount: Int

    /// Type of the poll
    public let type: PollType


    public init(
        closeDate: Int,
        id: TdInt64,
        isAnonymous: Bool,
        isClosed: Bool,
        openPeriod: Int,
        options: [PollOption],
        question: FormattedText,
        recentVoterIds: [MessageSender],
        totalVoterCount: Int,
        type: PollType
    ) {
        self.closeDate = closeDate
        self.id = id
        self.isAnonymous = isAnonymous
        self.isClosed = isClosed
        self.openPeriod = openPeriod
        self.options = options
        self.question = question
        self.recentVoterIds = recentVoterIds
        self.totalVoterCount = totalVoterCount
        self.type = type
    }
}


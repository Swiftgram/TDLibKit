//
//  Poll.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a poll
public struct Poll: Codable, Equatable {

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

    /// Poll question; 1-300 characters
    public let question: String

    /// User identifiers of recent voters, if the poll is non-anonymous
    public let recentVoterUserIds: [Int64]

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
        question: String,
        recentVoterUserIds: [Int64],
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
        self.recentVoterUserIds = recentVoterUserIds
        self.totalVoterCount = totalVoterCount
        self.type = type
    }
}


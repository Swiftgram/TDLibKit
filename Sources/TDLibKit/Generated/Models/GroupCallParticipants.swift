//
//  GroupCallParticipants.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Contains identifiers of group call participants
public struct GroupCallParticipants: Codable, Equatable, Hashable {

    /// Identifiers of the participants
    public let participantIds: [MessageSender]

    /// Total number of group call participants
    public let totalCount: Int


    public init(
        participantIds: [MessageSender],
        totalCount: Int
    ) {
        self.participantIds = participantIds
        self.totalCount = totalCount
    }
}


//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Detailed statistics about a message
public struct MessageStatistics: Codable, Equatable, Hashable {

    /// A graph containing the number of message views and shares
    public let messageInteractionGraph: StatisticalGraph

    /// A graph containing the number of message reactions
    public let messageReactionGraph: StatisticalGraph


    public init(
        messageInteractionGraph: StatisticalGraph,
        messageReactionGraph: StatisticalGraph
    ) {
        self.messageInteractionGraph = messageInteractionGraph
        self.messageReactionGraph = messageReactionGraph
    }
}


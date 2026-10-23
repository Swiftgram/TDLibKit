//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// A detailed statistics about a message
public struct MessageStatistics: Codable, Equatable, Hashable {

    /// A graph containing number of message views and shares
    public let messageInteractionGraph: StatisticalGraph

    /// A graph containing number of message reactions
    public let messageReactionGraph: StatisticalGraph


    public init(
        messageInteractionGraph: StatisticalGraph,
        messageReactionGraph: StatisticalGraph
    ) {
        self.messageInteractionGraph = messageInteractionGraph
        self.messageReactionGraph = messageReactionGraph
    }
}


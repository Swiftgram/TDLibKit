//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
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


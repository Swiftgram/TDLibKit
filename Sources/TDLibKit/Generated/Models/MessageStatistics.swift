//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e86b323d
//  https://github.com/tdlib/td/tree/e86b323d
//

import Foundation


/// A detailed statistics about a message
public struct MessageStatistics: Codable, Equatable {

    /// A graph containing number of message views and shares
    public let messageInteractionGraph: StatisticalGraph


    public init(messageInteractionGraph: StatisticalGraph) {
        self.messageInteractionGraph = messageInteractionGraph
    }
}


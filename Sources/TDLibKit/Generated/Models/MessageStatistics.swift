//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
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


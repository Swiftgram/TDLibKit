//
//  MessageStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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


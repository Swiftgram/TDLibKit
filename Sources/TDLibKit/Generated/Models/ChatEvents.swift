//
//  ChatEvents.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-375d3d23
//  https://github.com/tdlib/td/tree/375d3d23
//

import Foundation


/// Contains a list of chat events
public struct ChatEvents: Codable, Equatable {

    /// List of events
    public let events: [ChatEvent]


    public init(events: [ChatEvent]) {
        self.events = events
    }
}


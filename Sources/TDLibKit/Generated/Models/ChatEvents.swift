//
//  ChatEvents.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-3f54c301
//  https://github.com/tdlib/td/tree/3f54c301
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


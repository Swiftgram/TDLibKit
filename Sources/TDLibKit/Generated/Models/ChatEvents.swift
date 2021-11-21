//
//  ChatEvents.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
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


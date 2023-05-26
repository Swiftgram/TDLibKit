//
//  ChatEvents.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-54b34e91
//  https://github.com/tdlib/td/tree/54b34e91
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


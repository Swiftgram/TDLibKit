//
//  ChatEvents.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Contains a list of chat events
public struct ChatEvents: Codable, Equatable, Hashable {

    /// List of events
    public let events: [ChatEvent]


    public init(events: [ChatEvent]) {
        self.events = events
    }
}


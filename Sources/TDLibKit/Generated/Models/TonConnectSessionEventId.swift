//
//  TonConnectSessionEventId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Represents identifier of an event in a TON Connect session
public struct TonConnectSessionEventId: Codable, Equatable, Hashable {

    /// The event identifier
    public let eventId: TdInt64


    public init(eventId: TdInt64) {
        self.eventId = eventId
    }
}


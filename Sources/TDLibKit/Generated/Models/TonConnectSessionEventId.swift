//
//  TonConnectSessionEventId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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


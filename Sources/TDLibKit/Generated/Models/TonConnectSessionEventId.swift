//
//  TonConnectSessionEventId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
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


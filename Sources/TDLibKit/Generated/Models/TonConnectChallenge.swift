//
//  TonConnectChallenge.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// Represents a TON Connect challenge
public struct TonConnectChallenge: Codable, Equatable, Hashable {

    /// 104-byte challenge
    public let challenge: Data

    /// Unique identifier of the first outgoing event
    public let eventId: TdInt64


    public init(
        challenge: Data,
        eventId: TdInt64
    ) {
        self.challenge = challenge
        self.eventId = eventId
    }
}


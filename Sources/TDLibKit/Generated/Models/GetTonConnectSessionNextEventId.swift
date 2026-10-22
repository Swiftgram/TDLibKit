//
//  GetTonConnectSessionNextEventId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Returns the next event identifier for the given TON Connect session
public struct GetTonConnectSessionNextEventId: Codable, Equatable, Hashable {

    /// Unique identifier of the TON Connect session
    public let sessionId: TdInt64?


    public init(sessionId: TdInt64?) {
        self.sessionId = sessionId
    }
}


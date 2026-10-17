//
//  DisconnectTonConnectSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-ab8d769f
//  https://github.com/tdlib/td/tree/ab8d769f
//

import Foundation


/// Closes a TON Connect session
public struct DisconnectTonConnectSession: Codable, Equatable, Hashable {

    /// Encrypted body of the disconnect event; may be empty if the session has already been closed. Use getTonConnectSessionNextEventId to get event identifier for the event
    public let body: Data?

    /// Unique identifier of the TON Connect session to close
    public let sessionId: TdInt64?


    public init(
        body: Data?,
        sessionId: TdInt64?
    ) {
        self.body = body
        self.sessionId = sessionId
    }
}


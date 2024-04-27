//
//  ToggleSessionCanAcceptCalls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Toggles whether a session can accept incoming calls
public struct ToggleSessionCanAcceptCalls: Codable, Equatable, Hashable {

    /// Pass true to allow accepting incoming calls by the session; pass false otherwise
    public let canAcceptCalls: Bool?

    /// Session identifier
    public let sessionId: TdInt64?


    public init(
        canAcceptCalls: Bool?,
        sessionId: TdInt64?
    ) {
        self.canAcceptCalls = canAcceptCalls
        self.sessionId = sessionId
    }
}


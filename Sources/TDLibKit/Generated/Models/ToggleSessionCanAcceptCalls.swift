//
//  ToggleSessionCanAcceptCalls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-2e6ac1f2
//  https://github.com/tdlib/td/tree/2e6ac1f2
//

import Foundation


/// Toggles whether a session can accept incoming calls
public struct ToggleSessionCanAcceptCalls: Codable, Equatable {

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


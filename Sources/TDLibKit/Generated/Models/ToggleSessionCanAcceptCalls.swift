//
//  ToggleSessionCanAcceptCalls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
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


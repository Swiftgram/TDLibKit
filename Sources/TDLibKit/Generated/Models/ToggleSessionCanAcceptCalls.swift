//
//  ToggleSessionCanAcceptCalls.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-fdcb1098
//  https://github.com/tdlib/td/tree/fdcb1098
//

import Foundation


/// Toggles whether a session can accept incoming calls
public struct ToggleSessionCanAcceptCalls: Codable, Equatable {

    /// True, if incoming calls can be accepted by the session
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


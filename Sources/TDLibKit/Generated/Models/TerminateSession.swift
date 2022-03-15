//
//  TerminateSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-057b2d1e
//  https://github.com/tdlib/td/tree/057b2d1e
//

import Foundation


/// Terminates a session of the current user
public struct TerminateSession: Codable, Equatable {

    /// Session identifier
    public let sessionId: TdInt64?


    public init(sessionId: TdInt64?) {
        self.sessionId = sessionId
    }
}


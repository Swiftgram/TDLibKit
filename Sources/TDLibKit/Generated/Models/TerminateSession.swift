//
//  TerminateSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-0ae923c4
//  https://github.com/tdlib/td/tree/0ae923c4
//

import Foundation


/// Terminates a session of the current user
public struct TerminateSession: Codable, Equatable, Hashable {

    /// Session identifier
    public let sessionId: TdInt64?


    public init(sessionId: TdInt64?) {
        self.sessionId = sessionId
    }
}


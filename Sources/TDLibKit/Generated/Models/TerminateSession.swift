//
//  TerminateSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Terminates a session of the current user
public struct TerminateSession: Codable {

    /// Session identifier
    public let sessionId: TdInt64?


    public init(sessionId: TdInt64?) {
        self.sessionId = sessionId
    }
}


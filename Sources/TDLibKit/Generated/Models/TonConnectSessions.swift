//
//  TonConnectSessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Contains a list of TON Connect sessions
public struct TonConnectSessions: Codable, Equatable, Hashable {

    /// The list of sessions
    public let sessions: [TonConnectSession]


    public init(sessions: [TonConnectSession]) {
        self.sessions = sessions
    }
}


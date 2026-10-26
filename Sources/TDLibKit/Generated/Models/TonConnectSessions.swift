//
//  TonConnectSessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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


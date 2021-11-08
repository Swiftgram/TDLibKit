//
//  Sessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-911c5fc3
//  https://github.com/tdlib/td/tree/911c5fc3
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable {

    /// List of sessions
    public let sessions: [Session]


    public init(sessions: [Session]) {
        self.sessions = sessions
    }
}


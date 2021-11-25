//
//  Sessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable, Equatable {

    /// List of sessions
    public let sessions: [Session]


    public init(sessions: [Session]) {
        self.sessions = sessions
    }
}


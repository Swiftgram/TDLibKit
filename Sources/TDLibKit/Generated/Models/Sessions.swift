//
//  Sessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable, Equatable {

    /// Number of days of inactivity before sessions will automatically be terminated; 1-366 days
    public let inactiveSessionTtlDays: Int

    /// List of sessions
    public let sessions: [Session]


    public init(
        inactiveSessionTtlDays: Int,
        sessions: [Session]
    ) {
        self.inactiveSessionTtlDays = inactiveSessionTtlDays
        self.sessions = sessions
    }
}


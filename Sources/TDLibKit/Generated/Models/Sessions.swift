//
//  Sessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable, Equatable, Hashable {

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


//
//  Sessions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
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


//
//  MessageCalendarDay.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains information about found messages sent on a specific day
public struct MessageCalendarDay: Codable, Equatable, Hashable {

    /// First message sent on the day
    public let message: Message

    /// Total number of found messages sent on the day
    public let totalCount: Int


    public init(
        message: Message,
        totalCount: Int
    ) {
        self.message = message
        self.totalCount = totalCount
    }
}


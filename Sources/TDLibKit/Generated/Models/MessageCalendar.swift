//
//  MessageCalendar.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains information about found messages, split by days according to the option "utc_time_offset"
public struct MessageCalendar: Codable, Equatable, Hashable {

    /// Information about messages sent
    public let days: [MessageCalendarDay]

    /// Total number of found messages
    public let totalCount: Int


    public init(
        days: [MessageCalendarDay],
        totalCount: Int
    ) {
        self.days = days
        self.totalCount = totalCount
    }
}


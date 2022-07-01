//
//  MessageCalendar.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
//

import Foundation


/// Contains information about found messages, split by days according to the option "utc_time_offset"
public struct MessageCalendar: Codable, Equatable {

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


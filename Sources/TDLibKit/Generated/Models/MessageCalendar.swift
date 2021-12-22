//
//  MessageCalendar.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-3ff97237
//  https://github.com/tdlib/td/tree/3ff97237
//

import Foundation


/// Contains information about found messages, splitted by days according to the option "utc_time_offset"
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


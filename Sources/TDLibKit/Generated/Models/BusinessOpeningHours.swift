//
//  BusinessOpeningHours.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Describes opening hours of a business
public struct BusinessOpeningHours: Codable, Equatable, Hashable {

    /// Intervals of the time when the business is open
    public let openingHours: [BusinessOpeningHoursInterval]

    /// Unique time zone identifier
    public let timeZoneId: String


    public init(
        openingHours: [BusinessOpeningHoursInterval],
        timeZoneId: String
    ) {
        self.openingHours = openingHours
        self.timeZoneId = timeZoneId
    }
}


//
//  BusinessOpeningHours.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
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


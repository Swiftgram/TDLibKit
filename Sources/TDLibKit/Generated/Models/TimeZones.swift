//
//  TimeZones.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Contains a list of time zones
public struct TimeZones: Codable, Equatable, Hashable {

    /// A list of time zones
    public let timeZones: [TimeZone]


    public init(timeZones: [TimeZone]) {
        self.timeZones = timeZones
    }
}

